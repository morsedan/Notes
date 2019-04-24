//
//  NoteTableViewCell.swift
//  Notes
//
//  Created by morse on 4/24/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

protocol NoteTableViewCellDelegate: AnyObject {
    func shareNote(for cell: NoteTableViewCell)
}

class NoteTableViewCell: UITableViewCell {

    @IBAction func shareButtonPressed(_ sender: Any) {
        print("Share Pressed")
        delegate?.shareNote(for: self)
    }
    

    private func updateViews() {
        guard let note = note else { return }
        
        noteLabel.text = note.text
    }
    
    @IBOutlet weak var noteLabel: UILabel!
    
    weak var delegate: NoteTableViewCellDelegate?
    
    var note: Note? {
        didSet {
            updateViews()
        }
    }
}
