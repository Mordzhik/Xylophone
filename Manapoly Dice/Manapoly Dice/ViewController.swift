//
//  ViewController.swift
//  Manapoly Dice
//
//  Created by tse on 1/27/21.
//  Copyright © 2021 marzhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
  
    
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6 "]
    
    @IBOutlet weak var diceImgView1: UIImageView!
    
    @IBOutlet weak var diceImgView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
               randomDiceIndex1 = Int(arc4random_uniform(5))
               randomDiceIndex2 = Int(arc4random_uniform(5))
               print(randomDiceIndex1)
                 
               diceImgView1.image = UIImage (named: diceArray[randomDiceIndex1])
               diceImgView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

