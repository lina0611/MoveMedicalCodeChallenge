//
//  ViewController.Model.swift
//  MoveMedicalCodeChallenge
//
//  Created by Lina Gao on 4/28/20.
//  Copyright © 2020 Lina Gao. All rights reserved.
//

import UIKit

extension ViewController {

    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, Row>

    enum Row: Hashable {
        case bookRow(Book)
        case phoneRow(Phone)
        case carRow(Car)
    }

    enum Section: Int {
        case bookSection
        case phoneSection
        case carSection

        func description() -> String {
            switch self {
            case .bookSection:
                return "Books"
            case .phoneSection:
                return "Phones"
            case .carSection:
                return "Cars"
            }
        }
    }
}
