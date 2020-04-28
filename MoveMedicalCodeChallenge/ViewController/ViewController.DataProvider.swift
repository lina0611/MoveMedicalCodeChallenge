//
//  ViewController.DataProvider.swift
//  MoveMedicalCodeChallenge
//
//  Created by Lina Gao on 4/28/20.
//  Copyright © 2020 Lina Gao. All rights reserved.
//

import Foundation

extension ViewController {

    class DataProvider {

        private var books: [Book] {
            [Book(name: "Talk To Stranger", description: "Home book"),
             Book(name: "Swift 5.0", description: "Programming Language"),
             Book(name: "iOS Programming", description: "Programming Tool")]
        }

        private var phones: [Phone] {
            [Phone(name: "iPhone 11", description: "Pro", version: "11"),
             Phone(name: "iPhone SE", description: "2nd Generation", version: "SE")]
        }

        private var cars: [Car] {
            [Car.init(name: "Mini Cooper", description: "Small Car", yearOfCar: "2016"),
             Car.init(name: "Honda Civic", description: "Two doors", yearOfCar: "2019")]
        }

        func loadData() -> Snapshot {
            let sectionComposer = SectionComposer(bookList: books,
                                                  phoneList: phones,
                                                  carList: cars)
            let snapshot = sectionComposer.compose()
            return snapshot
        }
    }
}
