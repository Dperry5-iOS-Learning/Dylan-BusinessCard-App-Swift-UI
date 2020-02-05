//
//  InfoView.swift
//  Dylan Card
//
//  Created by Dylan Perry on 2/4/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color(red:0.88, green:0.69, blue:0.17))
            .frame(height: 40)
            .padding(.all)
            
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(Color(red:0.10, green:0.16, blue:0.34))
                    
                    Text(text)
                        .foregroundColor(Color(red:0.10, green:0.16, blue:0.34))
                        .font(Font.custom("VT323-Regular", size: 30))
                }
                
        )
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "919-218-3499", imageName: "phone.fill")
    }
}
