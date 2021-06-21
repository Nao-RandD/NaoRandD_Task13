//
//  CustumViewCell.swift
//  AppDojoTask13
//
//  Created by Naoyuki Kan on 2021/06/16.
//

import UIKit

class CustomViewCell: UITableViewCell {
    @IBOutlet private weak var checkImageView: UIImageView!
    @IBOutlet private weak var label: UILabel!

    func configuration(label: String, check: Bool) {
        self.label!.text = label
        checkImageView.image = check ? UIImage(named: "checkImage"): nil
    }
}
