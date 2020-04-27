//
//  InfoView.swift
//  Dylan Card
//
//  Created by Dylan Perry on 2/4/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct InfoView {
    private let viewModel: ViewModel
    
    public init(viewModel: ViewModel){
        self.viewModel = viewModel
    }
}

extension InfoView: View {
        
    var body: some View {
        Button(action: self.viewModel.action){
            RoundedRectangle(cornerRadius: Constants.CORNER_RADIUS)
                .fill(AppConstants.Colors.SECONDARY)
                .frame(height: Constants.BUTTON_HEIGHT)
                .padding(.all)
                
                .overlay(
                    HStack{
                        Image(systemName: self.viewModel.imageName)
                            .foregroundColor(AppConstants.Colors.PRIMARY)
                        
                        Text(self.viewModel.text)
                            .foregroundColor(AppConstants.Colors.PRIMARY)
                            .font(AppConstants.Fonts.INFORMATION_BUTTON_TEXT)
                    }
                    
            )
        }
    }
}


struct InfoView_Previews: PreviewProvider {

    static var previews: some View {
        let telephoneViewModel = InfoView.ViewModel(text: "919-218-3499", imageName: "phone.fill"){
            print("Open Phone")
        }
        
        return InfoView(viewModel: telephoneViewModel)
    }
}
