//
//  ContentView.swift
//  Dylan Card
//
//  Created by Dylan Perry on 2/4/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct Root {
    
    private let viewModel: ViewModel
    
    public init(){
        viewModel = ViewModel(imageName: Constants.IMAGE_NAME, name: Constants.NAME, title: Constants.TITLE, phoneNumber: Constants.PHONE_NUMBER, email: Constants.EMAIL, websiteName: Constants.WEBSITE_NAME, websiteUrl: Constants.WEBSITE_URL, chatBotTitle: Constants.CHATBOT_TITLE)
    }
}

extension Root: View {
    
    var body: some View {
        ZStack{            
            AppConstants.Colors.PRIMARY
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Profile(viewModel: Profile.ViewModel(imageName: self.viewModel.imageName, name: self.viewModel.name, title: self.viewModel.title))
                
                Divider()
                
                ContactInformation(viewModel: ContactInformation.ViewModel(phoneNumber: self.viewModel.phoneNumber, email: self.viewModel.email, website: ContactInformation.Website(displayName: self.viewModel.websiteName, urlString: self.viewModel.websiteUrl), chatBotTitle: self.viewModel.chatBotTitle))

            }
            
        }
        
    }
}

struct Root_Previews: PreviewProvider {
    static var previews: some View {
        Root()
    }
}
