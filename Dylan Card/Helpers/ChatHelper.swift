//
//  ChatHelper.swift
//  Dylan Card
//
//  Created by Dylan Perry on 4/26/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import Foundation
import Combine


class ChatHelper : ObservableObject {
    var didChange = PassthroughSubject<Void, Never>()
    private let cbService = ChatBotService()
    @Published var realTimeMessages = DataSource.messages
    
    func sendMessage(_ chatMessage: Message) {
        print("recieved Message")
        realTimeMessages.append(chatMessage)
        didChange.send(())
        let response = cbService.getAnswerFromServer(question: chatMessage.content)
        let responseMessage = Message(content: response, user: DataSource.firstUser)
        realTimeMessages.append(responseMessage)
        didChange.send(())

    }
}
