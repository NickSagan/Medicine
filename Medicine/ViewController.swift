//
//  ViewController.swift
//  Medicine
//
//  Created by Nick Sagan on 17.11.2021.
//

import UIKit

class ViewController: UITableViewController {
    
    var medicineArray: [String] = []

    @IBAction func addButton(_ sender: UIBarButtonItem) {
        medicineArray += ["New item added here"]
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My medicine"
    }

    override func numberOfSections(in tableView: UITableView) -> Int { 1 }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { medicineArray.count }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = medicineArray[indexPath.row]
        return cell
    }
    
}

