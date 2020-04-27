//
//  ProfilePicture.swift
//  Dylan Card
//
//  Created by Dylan Perry on 4/26/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct ProfilePicture {
    private let viewModel: ViewModel
    
    public init(viewModel: ViewModel){
        self.viewModel = viewModel
    }
}

extension ProfilePicture: View {
    var body: some View {
        Image(self.viewModel.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: Constants.WIDTH, height: Constants.HEIGHT, alignment: .center)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(AppConstants.Colors.SECONDARY, lineWidth: Constants.BORDER_WIDTH)
        )
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture(viewModel: ProfilePicture.ViewModel(imageName:"skeptical-dylan"))
    }
}
