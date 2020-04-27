//
//  Profile.swift
//  Dylan Card
//
//  Created by Dylan Perry on 4/26/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct Profile {
    private let viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
}


extension Profile: View {
    var body: some View {
        VStack{
            ProfilePicture(viewModel: ProfilePicture.ViewModel(imageName: self.viewModel.imageName))
           
            Text(self.viewModel.name)
                .foregroundColor(AppConstants.Colors.SECONDARY)
                .font(AppConstants.Fonts.TITLE)
           
            Text(self.viewModel.title)
            .foregroundColor(AppConstants.Colors.SECONDARY)
            .font(AppConstants.Fonts.SUBTITLE)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(viewModel: Profile.ViewModel(imageName: "skeptical-dylan", name: "Dylan F. Perry", title: "Principal Software Engineer" ) )
    }
}
