//
//  ContactInformation.swift
//  Dylan Card
//
//  Created by Dylan Perry on 4/26/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct ContactInformation {
    @State private var presentChatBot = false
    private let viewModel: ViewModel
    
    private var telephoneViewModel: InfoView.ViewModel
    private var emailViewModel: InfoView.ViewModel
    private var websiteViewModel: InfoView.ViewModel
    
    public init(viewModel: ViewModel){
        self.viewModel = viewModel
        
        // Telephone View Model
        self.telephoneViewModel = InfoView.ViewModel(text: viewModel.phoneNumber, imageName: Constants.Icons.PHONE){
            print("Open Phone")
            guard let url = URL(string: "tel:\(viewModel.phoneNumber)") else { return }
            UIApplication.shared.open(url)
        }
        
        // Email View Model
        self.emailViewModel = InfoView.ViewModel(text: viewModel.email, imageName: Constants.Icons.EMAIL){
            
            print ("Open Email")
            guard let url = URL(string: "mailTo:\(viewModel.email)") else { return }
            UIApplication.shared.open(url)
        }
        
        // Website View Model
        self.websiteViewModel = InfoView.ViewModel(text: viewModel.website.displayName, imageName: Constants.Icons.WEBSITE){
            print ("Open Web")
            guard let url = URL(string: viewModel.website.urlString) else { return }
            UIApplication.shared.open(url)
        }
    }

}

extension ContactInformation: View {
    var body: some View {
        VStack {
            
            InfoView(viewModel: self.telephoneViewModel)
            InfoView(viewModel: self.emailViewModel)
            InfoView(viewModel: self.websiteViewModel)
            InfoView(viewModel: InfoView.ViewModel(text:self.viewModel.chatBotTitle, imageName: Constants.Icons.CHATBOT ){
                    print("Open Chatbot")
                    self.presentChatBot.toggle()
                }
            )
                .sheet(isPresented: $presentChatBot) {
                    ChatBot()
                }
        }
    }
}

struct ContactInformation_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformation(viewModel: ContactInformation.ViewModel(
            phoneNumber: "919-218-3499",
            email: "DylanPerry5@gmail.com",
            website: ContactInformation.Website(displayName: "Dylans Site", urlString: "https://dperry.io"),
            chatBotTitle: "Talk to the bot"
            
            )
            
        )
    }
}
