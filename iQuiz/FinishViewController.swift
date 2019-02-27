//
//  FinishViewController.swift
//  iQuiz
//
//  Created by Anukriti Goyal on 2/26/19.
//  Copyright © 2019 ischoolnikki. All rights reserved.
//

import UIKit

internal class FinishViewController: UIViewController {
    
    @IBOutlet weak var score: UILabel!
    var totalScore: Int!
    var totalPossible: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let scoreVal: Double = (Double(totalScore) / Double(totalPossible)) * 100
        score.text = "You scored " + String(scoreVal) + "%"
    }
    
    @IBAction func backToHome(_ sender: Any) {
        performSegue(withIdentifier: "home", sender: self)
    }
}
