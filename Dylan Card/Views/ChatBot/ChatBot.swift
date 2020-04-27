//
//  ChatBot.swift
//  Dylan Card
//
//  Created by Dylan Perry on 4/26/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct ChatBot: View {
    var chatHelper = ChatHelper()

    var body: some View {
        VStack{
            ChatView().environmentObject(chatHelper)
        }
    }
}

struct ChatBot_Previews: PreviewProvider {
    static var previews: some View {
        ChatBot()
    }
}
