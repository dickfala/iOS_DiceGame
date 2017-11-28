//
//  ViewController.swift
//  DiceDemo
//
//  Created by cyy on 2017/11/27.
//  Copyright © 2017年 james chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6"]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollBtnAction(_ sender: UIButton) {
        
        // random 0~5
        randomDiceIndex1 = Int(arc4random_uniform(UInt32(diceArray.count)))
        randomDiceIndex2 = Int(arc4random_uniform(UInt32(diceArray.count)))
        
//        print(randomDiceIndex1)
//        print(randomDiceIndex2)
        diceImageView1.image = UIImage(named:diceArray[randomDiceIndex1])
          diceImageView2.image = UIImage(named:diceArray[randomDiceIndex2])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

