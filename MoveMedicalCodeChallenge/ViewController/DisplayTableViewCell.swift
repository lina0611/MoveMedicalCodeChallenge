//
//  DisplayTableViewCell.swift
//  MoveMedicalCodeChallenge
//
//  Created by Lina Gao on 4/28/20.
//  Copyright © 2020 Lina Gao. All rights reserved.
//

import UIKit

class DisplayTableViewCell: UITableViewCell {

    static let identifier = "DisplayTableViewCell"

    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var topSubtitleLabel: UILabel!
    @IBOutlet private var bottomSubtitleLabel: UILabel!

    func configure<T: DisplayProtocol>(with item: T) {
        titleLabel.text = item.title
        topSubtitleLabel.text = item.topSubtitle
        bottomSubtitleLabel.text = item.bottomSubtitle
    }
}
