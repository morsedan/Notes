//
//  NotesViewController.swift
//  Notes
//
//  Created by morse on 4/24/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    

    @IBAction func saveButtonPressed(_ sender: Any) {
        print("Hi")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    let noteController = NoteController()
    
    @IBOutlet weak var tableView: UITableView!
    
}

extension NotesViewController: UITableViewDelegate {
    
}

extension NotesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noteController.notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell", for: indexPath)

        // Get the note for row
        
        let note = noteController.notes[indexPath.row]
        
//        cell.backgroundColor = .yellow
        
        
        
        return cell
    }
    
    
}
