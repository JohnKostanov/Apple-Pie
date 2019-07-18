//
//  ViewController.swift
//  Apple Pie
//
//  Created by  Джон Костанов on 18/07/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var treeImageView: UIImageView!
    
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBOutlet var corectWorldLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in letterButtons {
           _ = button
        }
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
}

