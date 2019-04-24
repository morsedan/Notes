//
//  NoteController.swift
//  Notes
//
//  Created by morse on 4/24/19.
//  Copyright © 2019 morse. All rights reserved.
//

import Foundation

class NoteController {
    
    init() {
        // Create test data
        createNote(withText: "Walk the dog")
        createNote(withText: "Eat!")
    }
    
    func createNote(withText text: String) {
        let note = Note(text: text)
        
        notes.append(note)
    }
    
    var notes: [Note] = []  //Array of notes
}
