//
//  ViewController.swift
//  MoveMedicalCodeChallenge
//
//  Created by Lina Gao on 4/28/20.
//  Copyright © 2020 Lina Gao. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    private lazy var dataSource = makeDataSource()
    private lazy var dataProvider = DataProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        applySnapshot()
    }

    private func configureTableView() {
        tableView.backgroundColor = .systemGroupedBackground
    }

    private func makeDataSource() -> DataSource {
        dataSource = DataSource(tableView: tableView) { (tableView, _, row) -> UITableViewCell? in
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DisplayTableViewCell.identifier) as? DisplayTableViewCell else {
                preconditionFailure("Unable to dequeue DisplayTableViewCell")
            }

            switch row {
            case .bookRow(let book):
                cell.configure(with: book)
                return cell
            case .phoneRow(let phone):
                cell.configure(with: phone)
                return cell
            case .carRow(let car):
                cell.configure(with: car)
                return cell
            }
        }
        dataSource.defaultRowAnimation = .fade
        return dataSource
    }

    private func applySnapshot() {
        let snapshot = dataProvider.loadData()
        dataSource.apply(snapshot, animatingDifferences: false)
    }

    class DataSource: UITableViewDiffableDataSource<Section, Row> {
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            let sectionRow = Section(rawValue: section)
            return sectionRow?.description()
        }
    }
}
