//
//  User.swift
//  CloudKitUsersTest
//
//  Created by Jantsen Tanner on 6/15/21.
//

import UIKit
import CloudKit

class User {
    let screenName: String
    let displayingScreenName: Bool
    let username: String
    var friends: [User]
    let profilePic: UIImage
    let friendRequests: [FriendRequest]
    let experienceLevel: String
    let bio: String?
    //Insturment may be another model object
    let location: String
    let instrument: String
    let styleTastes: String
    let ckRecordID: CKRecord.ID
    
    ///if we have a screenname use it if not then use the username
    init(showScreenName: Bool = true, username: String, profilePic: UIImage, experienceLevel: String, bio: String?, location: String, instrument: String, styleTastes: String, ckRecordID: CKRecord.ID = CKRecord.ID(recordName: UUID().uuidString), screenName: String?, friends:[User]?, friendRequests: [FriendRequest]?) {
        self.username = username
        self.profilePic = profilePic
        self.experienceLevel = experienceLevel
        self.bio = bio
        self.location = location
        self.instrument = instrument
        self.styleTastes = styleTastes
        self.ckRecordID = ckRecordID
        if let friends = friends{
            self.friends = friends
        }else{
            self.friends = []
        }
        if let screenName = screenName{
            self.screenName = screenName
        }else{
            self.screenName = username
        }
        if let friendRequests = friendRequests{
            self.friendRequests = friendRequests
        }else{
            self.friendRequests = []
        }
        self.displayingScreenName = showScreenName
    }
    
}// End of class

struct FriendRequest{
    let senderUsername: String
    let receiverUsername: String
}
