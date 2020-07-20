//
//  User.swift
//  AppCore
//
//  Created by Truong Quang Hung on 7/20/20.
//

import Foundation

public class User: Identifiable {
    public let username: String
    public let password: String
    public var token: String?
    
    public init(_ username: String, _ password: String) {
        self.username = username
        self.password = password
    }
    
}
