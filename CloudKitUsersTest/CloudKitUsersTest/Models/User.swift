//
//  User.swift
//  CloudKitUsersTest
//
//  Created by Jantsen Tanner on 6/15/21.
//

import UIKit
import CloudKit

class User {
    
    let username: String
    let profilePic: UIImage
    let experienceLevel: String
    let bio: String?
    //Insturment may be another model object
    let location: String
    let instrument: String
    let styleTastes: String
    let ckRecordID: CKRecord.ID
    
    init(username: String, profilePic: UIImage, experienceLevel: String, bio: String?, location: String, instrument: String, styleTastes: String, ckRecordID: CKRecord.ID = CKRecord.ID(recordName: UUID().uuidString)) {
        self.username = username
        self.profilePic = profilePic
        self.experienceLevel = experienceLevel
        self.bio = bio
        self.location = location
        self.instrument = instrument
        self.styleTastes = styleTastes
        self.ckRecordID = ckRecordID
        
    }
    
}// End of class

