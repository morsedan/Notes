//
//  NoteDetailViewController.swift
//  Notes
//
//  Created by morse on 4/24/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    private func updateViews() {
        guard let note = note, isViewLoaded else { return }
        
        noteTextView.text = note.text
    }
    
    var note: Note? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet var noteTextView: UITextView!
    
    
}
