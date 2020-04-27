//
//  InfoView+ViewModel.swift
//  Dylan Card
//
//  Created by Dylan Perry on 4/26/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import Foundation

extension InfoView {
    struct ViewModel {
        let text: String
        let imageName: String
        let action: () -> Void
        public init(text: String, imageName: String, action: @escaping () -> Void ) {
            self.text = text
            self.imageName = imageName
            self.action = action
        }
    }
}
