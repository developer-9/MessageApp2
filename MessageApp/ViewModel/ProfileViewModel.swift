//
//  ProfileViewModel.swift
//  MessageApp
//
//  Created by Taisei Sakamoto on 2020/06/20.
//  Copyright © 2020 Taisei Sakamoto. All rights reserved.
//

import Foundation

enum ProfileViewModel: Int, CaseIterable{
    case accountInfo
    case settings
    
    var description: String {
        switch self {
        case .accountInfo: return "Account Info"
        case .settings: return "Settings"
        }
    }
    
    var iconImageName: String {
        switch self {
        case .accountInfo: return "person.circle"
        case .settings: return "gear"
        }
    }
}
