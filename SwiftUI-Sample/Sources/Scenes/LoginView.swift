//
//  LoginView.swift
//  SwiftUI-Sample
//
//  Created by Truong Quang Hung on 7/20/20.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel = LoginViewModel()
    
    var body: some View {
        
        VStack(alignment: .leading) {
            TextField("Enter username...", text: $viewModel.username)
            Text("Your username: \(viewModel.username)")
            
            TextField("Enter password...", text: $viewModel.password)
            Text("Your password: \(viewModel.password)")
            
            Button("Sign In") {
                self.userLogin()
            }
            
            Text("Your Token: \(viewModel.token)")
            
        }.padding()
    }
    
    private func userLogin() {
        viewModel.userLogin()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
