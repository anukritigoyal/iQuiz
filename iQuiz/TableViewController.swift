//
//  TableViewController.swift
//  iQuiz
//
//  Created by Anukriti Goyal on 2/26/19.
//  Copyright © 2019 Anukriti Goyal. All rights reserved.
//

import UIKit

let categories : [String] = ["Math", "Marvel Superheroes", "Science"]
let descriptions : [String] = ["Quizzes you on simple calculus questions", "Questions related to Marvel superheroes", "Trivia for fans of Science"]
let icons : [String] = ["math", "marvel", "science"]

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableOfCategories : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "main") as? TableCellViewController else {
            fatalError("cell didn't typecast")
        }
        cell.labelName.text = categories[indexPath.row]
        cell.icon.image = UIImage(named: icons[indexPath.row])
        cell.descriptionLabel.text = descriptions[indexPath.row]
        return cell
    }
    
    @IBAction func settingsPressed(_ sender: Any) {
        let settingsAlert = UIAlertController(title: "Settings", message: "Settings go here", preferredStyle: .alert)
        settingsAlert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
        self.present(settingsAlert, animated: true)
    }
    
}

