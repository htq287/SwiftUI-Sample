//
//  IUserService.swift
//  AppCore
//
//  Created by Truong Quang Hung on 7/20/20.
//

import Foundation

public protocol IUserService {
    func login(_ username: String, _ password: String, _ completion: @escaping((_ success: Bool, _ user: User) -> Void))
    
    func login_(_ username: String, _ password: String) -> User
}
