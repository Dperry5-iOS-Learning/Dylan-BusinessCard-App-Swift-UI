//
//  User.swift
//  Dylan Card
//
//  Created by Dylan Perry on 4/26/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import Foundation
struct User: Hashable {
    let name: String
    let avatar: String
    var isCurrentUser: Bool = false
}
