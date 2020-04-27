//
//  ChatBotService.swift
//  Dylan Card
//
//  Created by Dylan Perry on 4/26/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import Foundation

struct ChatBotService {
    func getAnswerFromServer(question: String) -> String {
        print("User asked: \(question)")
        return "His last name is Perry"
    }
}
