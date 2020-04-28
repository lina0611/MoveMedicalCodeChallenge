//
//  ViewController.SectionComposer.swift
//  MoveMedicalCodeChallenge
//
//  Created by Lina Gao on 4/28/20.
//  Copyright © 2020 Lina Gao. All rights reserved.
//

import Foundation

extension ViewController {

    struct SectionComposer {

        typealias Row = ViewController.Row

        private var bookList = [Book]()
        private var phoneList = [Phone]()
        private var carList = [Car]()

        init(bookList: [Book], phoneList: [Phone], carList: [Car]) {
            self.bookList = bookList
            self.phoneList = phoneList
            self.carList = carList
        }

        func compose() -> Snapshot {
            var snapshot = Snapshot()

            // Book
            snapshot.appendSections([.bookSection])
            let bookRow = bookList.compactMap { Row.bookRow($0) }
            snapshot.appendItems(bookRow, toSection: .bookSection)
            // Phone
            snapshot.appendSections([.phoneSection])
            let phoneRow = phoneList.compactMap { Row.phoneRow($0) }
            snapshot.appendItems(phoneRow, toSection: .phoneSection)
            // Car
            snapshot.appendSections([.carSection])
            let carRow = carList.compactMap { Row.carRow($0) }
            snapshot.appendItems(carRow, toSection: .carSection)

            return snapshot
        }
    }
}
