//
//  ViewController.swift
//  App2 Dicee
//
//  Created by Eugen Puzynin on 17.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceLeft: UIImageView!
    @IBOutlet weak var diceRight: UIImageView!
    
    @IBAction func rollButton(_ sender: UIButton) {
        
        let diceArray = ["1.square.fill", "2.square.fill", "3.square.fill", "4.square.fill", "5.square.fill", "6.square.fill"]
        
        diceLeft.image = .init(systemName: diceArray.randomElement()!)
        diceRight.image = .init(systemName: diceArray[Int.random(in: 0...5)])
        
    }
    
}

