//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Variable Declation
    
    //Dice Squares
    
    @IBOutlet weak var square1: UIView!
    @IBOutlet weak var square2: UIView!
    @IBOutlet weak var square3: UIView!
    @IBOutlet weak var square4: UIView!
    @IBOutlet weak var square5: UIView!
    @IBOutlet weak var square6: UIView!
    @IBOutlet weak var square7: UIView!
    
    //Rolls
    
    @IBOutlet weak var roll1: UILabel!
    @IBOutlet weak var roll2: UILabel!
    @IBOutlet weak var roll3: UILabel!
    @IBOutlet weak var roll4: UILabel!
    @IBOutlet weak var roll5: UILabel!
    @IBOutlet weak var roll6: UILabel!
    
    var count = 1
    
    @IBAction func dieRoll(sender: AnyObject) {
        let x = randomDiceRoll()
        print(x)
        changeSquares(x)
        changeLabels(count, value: x)
        count += 1
        }
    
    //Blank Initial Screen
    
    override func viewDidLoad() {
        super.viewDidLoad()
        square1.hidden = true
        square2.hidden = true
        square3.hidden = true
        square4.hidden = true
        square5.hidden = true
        square6.hidden = true
        square7.hidden = true
        roll1.hidden = true
        roll2.hidden = true
        roll3.hidden = true
        roll4.hidden = true
        roll5.hidden = true
        roll6.hidden = true
    }
    

    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func hideAllSquares(){
        square1.hidden = true
        square2.hidden = true
        square3.hidden = true
        square4.hidden = true
        square5.hidden = true
        square6.hidden = true
        square7.hidden = true
    }
    
    func hideAllRolls(){
        roll1.hidden = true
        roll2.hidden = true
        roll3.hidden = true
        roll4.hidden = true
        roll5.hidden = true
        roll6.hidden = true
    }

       func changeSquares(num:Int) {
        switch num {
        case 1:
            hideAllSquares()
            square7.hidden = false
        case 2:
            hideAllSquares()
            square1.hidden = false
            square6.hidden = false
        case 3:
            hideAllSquares()
            square1.hidden = false
            square6.hidden = false
            square7.hidden = false
        case 4:
            hideAllSquares()
            square1.hidden = false
            square6.hidden = false
            square3.hidden = false
            square4.hidden = false
        case 5:
            hideAllSquares()
            square1.hidden = false
            square6.hidden = false
            square3.hidden = false
            square4.hidden = false
            square7.hidden = false
        case 6:
            hideAllSquares()
            square1.hidden = false
            square2.hidden = false
            square3.hidden = false
            square4.hidden = false
            square5.hidden = false
            square6.hidden = false
        default:
            count = 1
        }
    }
    
    func changeLabels(counts: Int, value: Int){
        switch counts {
            case 1:
            roll1.hidden = false
            roll1.text = "\(value)"
            case 2:
            roll2.hidden = false
            roll2.text = "\(value)"
            case 3:
            roll3.hidden = false
            roll3.text = "\(value)"
            case 4:
            roll4.hidden = false
            roll4.text = "\(value)"
            case 5:
            roll5.hidden = false
            roll5.text = "\(value)"
            case 6:
            roll6.hidden = false
            roll6.text = "\(value)"
            default:
            hideAllRolls()
            roll1.text = "\(value)"
            count = 0
        }
    }
}