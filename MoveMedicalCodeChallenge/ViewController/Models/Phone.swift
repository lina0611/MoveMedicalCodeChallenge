//
//  Phone.swift
//  MoveMedicalCodeChallenge
//
//  Created by Lina Gao on 4/28/20.
//  Copyright © 2020 Lina Gao. All rights reserved.
//

import Foundation

struct Phone: Hashable, DisplayProtocol {
    var title: String {
        return self.name
    }

    var topSubtitle: String {
        return self.description
    }

    var bottomSubtitle: String {
        return self.version
    }

    let name: String
    let description: String
    let version: String
    let identifier: UUID = UUID()

    func hash(into hasher: inout Hasher) {
        return hasher.combine(identifier)
    }

    static func == (lhs: Phone, rhs: Phone) -> Bool {
        return lhs.name == rhs.name
    }
}
