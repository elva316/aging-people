//
//  ViewController.swift
//  aging people
//
//  Created by elva wang on 11/4/17.
//  Copyright © 2017 elva wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tableContent = ["name1", "name2", "name3", "name4", "name5", "name6", "name7", "name8", "name9", "name10", "name11", "name12"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int {
        return tableContent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ageCell", for: indexPath)
        cell.textLabel?.text = tableContent[indexPath.row]
        let randomN = String(Int(arc4random_uniform(91) + 5))
        cell.detailTextLabel?.text = "\(randomN) years old"
        return cell
    }

}
