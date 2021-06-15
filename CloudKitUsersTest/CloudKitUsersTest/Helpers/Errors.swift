//
//  Errors.swift
//  CloudKitUsersTest
//
//  Created by Jantsen Tanner on 6/15/21.
//

import Foundation

enum UserError: LocalizedError {
    case ckError(Error)
    case couldNotUnwrap
    
    var errorDescription: String{
        switch self {
        case .ckError(let error):
            return error.localizedDescription
        case .couldNotUnwrap:
            return "User could not be unwrapped"
        }
    }
}
