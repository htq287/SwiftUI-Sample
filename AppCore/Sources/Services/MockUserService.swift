//
//  MockUserService.swift
//  AppCore
//
//  Created by Truong Quang Hung on 7/20/20.
//

import Foundation

open class MockUserService: IUserService {
    private let mock_username = "admin"
    private let mock_password = "123!@"
    
    let delay: TimeInterval?
    
    public init(delay: TimeInterval? = nil) {
        self.delay = delay
    }
    
    private func userValidation(_ username: String, _ password: String) -> Bool {
            return (username.elementsEqual(self.mock_username) && password.elementsEqual(self.mock_password)) ? true: false
    }
    
    // MARK: IUserService Implementations
    public func login(_ username: String, _ password: String, _ completion: @escaping ((Bool, User) -> Void)) {
        if let _delay = self.delay {
            let deadline = DispatchTime.now() + _delay
            DispatchQueue.main.asyncAfter(deadline: deadline) { [weak self] in
                guard let strongSelf = self else { return }
                let user = User.init(username, password)
                user.token  = "JNW-TMD67345"
                completion((strongSelf.userValidation(username, password)), user)
            }
        } else {
            let user = User.init(username, password)
            user.token = "JNW-TMD67345"
            completion(self.userValidation(username, password), user);
        }
    }
    
    public func login_(_ username: String, _ password: String) -> User {
        let user = User.init(username, password)
        user.token = "JNW-TMD67345"
        return user
    }
}
