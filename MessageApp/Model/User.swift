//
//  User.swift
//  MessageApp
//
//  Created by Taisei Sakamoto on 2020/06/13.
//  Copyright © 2020 Taisei Sakamoto. All rights reserved.
//

import Foundation

struct User {
    let uid: String
    let profileImageString: String
    let username: String
    let fullname: String
    let email: String
    
    init(dictionary: [String : Any]) {
        self.uid = dictionary["uid"] as! String
        self.profileImageString = dictionary["profileImageString"] as! String
        self.username = dictionary["username"] as! String
        self.fullname = dictionary["fullname"] as! String
        self.email = dictionary["email"] as! String
    }
}
