//
//  Constants.swift
//  App9 Flash-Chat
//
//  Created by Eugen Puzynin on 24.03.22.
//

import Foundation

struct K {
    static let appName = "FlashChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
