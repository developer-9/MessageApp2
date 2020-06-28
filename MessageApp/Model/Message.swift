//
//  Message.swift
//  MessageApp
//
//  Created by Taisei Sakamoto on 2020/06/16.
//  Copyright © 2020 Taisei Sakamoto. All rights reserved.
//

import Firebase

struct Message {
    let text: String
    let toId: String
    let fromId: String
    var timestamp: Timestamp!
    var user: User?
    
    let isFromCurrentUser: Bool
    
    var chatPartnerId: String {
        return isFromCurrentUser ? toId : fromId
    }
    
    init(dictionary: [String : Any]) {
        self.text = dictionary["text"] as! String
        self.toId = dictionary["toId"] as! String
        self.fromId = dictionary["fromId"] as! String
        self.timestamp = dictionary["timestamp"] as? Timestamp
        self.isFromCurrentUser = fromId == Auth.auth().currentUser?.uid
    }
}

struct Conversation {
    let user: User
    let message: Message
}
