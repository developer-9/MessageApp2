//
//  LoginViewModel.swift
//  MessageApp
//
//  Created by Taisei Sakamoto on 2020/06/12.
//  Copyright © 2020 Taisei Sakamoto. All rights reserved.
//

import Foundation

protocol AuthenticationProtocol {
    var formIsVoid: Bool { get }
}

struct LoginViewModel: AuthenticationProtocol {
    
    var email: String?
    var password: String?
    
    var formIsVoid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
}
