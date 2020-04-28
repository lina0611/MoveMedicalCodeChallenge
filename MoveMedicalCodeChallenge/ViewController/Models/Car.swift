//
//  Car.swift
//  MoveMedicalCodeChallenge
//
//  Created by Lina Gao on 4/28/20.
//  Copyright © 2020 Lina Gao. All rights reserved.
//

import Foundation

struct Car: Hashable, DisplayProtocol {
    var title: String {
        return self.name
    }

    var topSubtitle: String {
        return self.description
    }

    var bottomSubtitle: String {
        return self.yearOfCar
    }

    let name: String
    let description: String
    let yearOfCar: String
    let identifier: UUID = UUID()

    func hash(into hasher: inout Hasher) {
        return hasher.combine(identifier)
    }

    static func == (lhs: Car, rhs: Car) -> Bool {
        return lhs.name == rhs.name
    }
}
