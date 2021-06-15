//
//  UserController.swift
//  CloudKitUsersTest
//
//  Created by Jantsen Tanner on 6/15/21.
//

import UIKit
import CloudKit

class UserController {
    
    var users: [User] = []
    
    static let sharedInstance = UserController()
    let privateDB = CKContainer.default().privateCloudDatabase
    
    //MARK: - CRUD Functions
    
    func createUserWith(userName: String, profilePic: UIImage, bio: String, experienceLevel: String, location: String, instrument: String, styleTastes: String, screenName: String, friends: [User], friendRequests: [FriendRequest], completion: @escaping (Result<User?, UserError>) -> Void) {
        
        
        let newUser = User(username: userName, profilePic: profilePic, experienceLevel: experienceLevel, bio: bio, location: location, instrument: instrument, styleTastes: styleTastes, screenName: screenName, friends: friends, friendRequests: friendRequests)
        
        let userRecord = CKRecord.init(user: newUser)
        privateDB.save(userRecord) { record, error in
            
            if let error = error {
                completion(.failure(.ckError(error)))
            }
            guard let record = record,
                  let savedUser = User(ckRecord: record) else { return }
            completion(.failure(.couldNotUnwrap))
            print("User was saved sucessfully")
            completion(.success(savedUser))
            
        }
    }
    
    
}// End of class

