//
//  Book.swift
//  MoveMedicalCodeChallenge
//
//  Created by Lina Gao on 4/28/20.
//  Copyright © 2020 Lina Gao. All rights reserved.
//

import Foundation

struct Book: Hashable, DisplayProtocol {
    var title: String {
        return self.name
    }

    var topSubtitle: String {
        return self.description
    }

    var bottomSubtitle: String {
        return ""
    }

    let name: String
    let description: String
    let identifier: UUID = UUID()


    func hash(into hasher: inout Hasher) {
        return hasher.combine(identifier)
    }

    static func == (lhs: Book, rhs: Book) -> Bool {
        return lhs.name == rhs.name
    }
}
