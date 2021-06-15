//
//  FriendController.swift
//  CloudKitUsersTest
//
//  Created by Gavin Craft on 6/15/21.
//

import Foundation
import CloudKit
class FriendController{
    static let shared = FriendController()
    var currentUser: User?
    let publicDB = CKContainer.default().publicCloudDatabase
    
    func getUser(username: String, completion: @escaping(Result<User, UserError>)->Void){
        
    }
}
