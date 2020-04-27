//
//  Message.swift
//  Dylan Card
//
//  Created by Dylan Perry on 4/26/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import Foundation
struct Message: Hashable {
    let content: String
    let user: User
}

struct DataSource {
    static let firstUser = User(name: "ChatBot", avatar: "desktopcomputer")
    static var secondUser = User(name: "Gues", avatar: "person.circle.fill", isCurrentUser: true)
    static let messages = [
        Message(content: "Hi, I'm Dylan's Chatbot. I don't know much, but I do know a lot about Dylan. Ask me anything!", user: DataSource.firstUser),
    ]
}
