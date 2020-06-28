//
//  ConversationViewModel.swift
//  MessageApp
//
//  Created by Taisei Sakamoto on 2020/06/18.
//  Copyright © 2020 Taisei Sakamoto. All rights reserved.
//

import Foundation


struct ConversationViewModel {
    
    private let conversation: Conversation
    
    var profileImageUrl: URL? {
        return URL(string: conversation.user.profileImageString)
    }
    
    var timestamp: String {
        let date = conversation.message.timestamp.dateValue()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm a"
        return dateFormatter.string(from: date)
    }
    
    init(conversation: Conversation) {
        self.conversation = conversation
    }
}
