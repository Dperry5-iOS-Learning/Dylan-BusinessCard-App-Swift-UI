//
//  ContentView.swift
//  Dylan Card
//
//  Created by Dylan Perry on 2/4/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Color(red:0.10, green:0.16, blue:0.34)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("skeptical-dylan")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 175, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color(red:0.88, green:0.69, blue:0.17), lineWidth: 5)
                )
                        
                Text("Dylan F. Perry")
                    .foregroundColor(Color(red:0.88, green:0.69, blue:0.17))
                    .font(Font.custom("VT323-Regular", size: 40))
                    .fontWeight(.bold)
                
                Text("Principal Software Engineer")
                    .foregroundColor(Color(red:0.88, green:0.69, blue:0.17))
                    .font(Font.custom("VT323-Regular", size: 20))
                    .fontWeight(.bold)
                
                Divider()
                
                InfoView(text: "919-218-3499", imageName: "phone.fill")
                InfoView(text: "DylanPerry5@gmail.com", imageName: "envelope.fill")
                InfoView(text: "Dperry.io", imageName:"desktopcomputer")
               
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
