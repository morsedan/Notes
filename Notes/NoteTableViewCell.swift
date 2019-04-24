//
//  NoteTableViewCell.swift
//  Notes
//
//  Created by morse on 4/24/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class NoteTableViewCell: UITableViewCell {

    @IBAction func shareButtonPressed(_ sender: Any) {
        print("Share Pressed")
    }
    

    @IBOutlet weak var noteLabel: UILabel!
}
