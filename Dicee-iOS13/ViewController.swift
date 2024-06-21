//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImage2: UIImageView!
    let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    @IBOutlet weak var diceImage1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImage1.image = #imageLiteral(resourceName: "DiceFour")
        diceImage2.image = #imageLiteral(resourceName: "DiceTwo")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollButton(_ sender: UIButton) {
        let index1 = Int.random(in: 0..<6)
        let index2 = Int.random(in: 0..<6)
        diceImage1.image = diceArray[index1]
        diceImage2.image = diceArray[index2]
    }
    
}

