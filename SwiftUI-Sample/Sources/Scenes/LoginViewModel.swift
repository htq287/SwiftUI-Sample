//
//  LoginViewModel.swift
//  SwiftUI-Sample
//
//  Created by Truong Quang Hung on 7/20/20.
//

import Foundation
import AppCore

class LoginViewModel: ObservableObject {
    @Published var username = ""
    @Published var password = ""
    @Published var token = "Not Authorized Yet!"
    var userService: MockUserService?
    init() {
        self.userService = MockUserService.init(delay: 0.5)
    }
    
    func userLogin() {
        self.userService?.login(username, password, { [weak self] (success, user: User)  in
            guard let strongSelf = self else { return }
            if success {
                strongSelf.token = user.token!
            } else {
                strongSelf.token = "Authorization failed."
            }
            
        })
    }
}
