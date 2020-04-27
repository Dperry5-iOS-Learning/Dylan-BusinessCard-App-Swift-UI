//
//  MessageView.swift
//  Dylan Card
//
//  Created by Dylan Perry on 4/26/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct MessageView : View {
    var currentMessage: Message
    var body: some View {
        HStack(alignment: .bottom, spacing: 15) {
            if !currentMessage.user.isCurrentUser {
                Image(systemName: currentMessage.user.avatar)
                .resizable()
                    .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35, alignment: .center)
                .cornerRadius(20)
            } else {
                Spacer()
            }
            ContentMessageView(contentMessage: currentMessage.content,
                               isCurrentUser: currentMessage.user.isCurrentUser)
        }.padding()
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(currentMessage: Message(content: "There are a lot of premium iOS templates on iosapptemplates.com", user: DataSource.secondUser))
    }
}
