//
//  UserServiceTests.swift
//  AppCoreTests
//
//  Created by Truong Quang Hung on 7/20/20.
//

import XCTest
@testable import AppCore

final class UserServiceTests: XCTestCase {
    
    private var userService: MockUserService?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        self.userService = MockUserService.init(delay: 0.5)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testUserLogin() {
            // Given
            let expectation = self.expectation(description: "Login should not be failed")
            var _success: Bool?
            
            // When
            self.userService?.login("admin", "123!@", { (success, user: User) in
                _success = success
                expectation.fulfill()
            })
            
            self.waitForExpectations(timeout: 0.7, handler: nil)
            
            // Then
            XCTAssertTrue(_success!)
        }

}
