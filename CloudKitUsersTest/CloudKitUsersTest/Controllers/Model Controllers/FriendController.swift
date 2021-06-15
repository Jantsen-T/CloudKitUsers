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
    let privateDatabase = CKContainer.default().privateCloudDatabase
    let publicDatabase = CKContainer.default().publicCloudDatabase
    
    //MARK: friend functions
    func sendFriendRequest(username: String){
        if username == ""{//if username exists, this is just a placeholder
            guard let currentUser = currentUser else { return}
            let friendRequest = FriendRequest(senderUsername: currentUser.username, receiverUsername: username)
        }
    }
    func getUser(username: String, completion: @escaping(User)->Void){
        
    }
}
