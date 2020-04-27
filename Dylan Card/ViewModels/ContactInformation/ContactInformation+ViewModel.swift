//
//  ContactInformation+ViewModel.swift
//  Dylan Card
//
//  Created by Dylan Perry on 4/26/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import Foundation

extension ContactInformation {
    struct ViewModel {
        let phoneNumber: String
        let email: String
        let website: Website
        let chatBotTitle: String
    }
    
    struct Website {
        let displayName: String
        let urlString: String
    }
}
