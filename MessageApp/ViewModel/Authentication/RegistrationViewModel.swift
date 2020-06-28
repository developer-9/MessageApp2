//
//  RegistrationViewModel.swift
//  MessageApp
//
//  Created by Taisei Sakamoto on 2020/06/12.
//  Copyright © 2020 Taisei Sakamoto. All rights reserved.
//

import Foundation

struct RegistrationViewModel: AuthenticationProtocol {
     
    var email: String?
    var password: String?
    var fullname: String?
    var username: String?
    
    var formIsVoid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false && fullname?.isEmpty == false && username?.isEmpty == false
    }
}
