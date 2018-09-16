//
//  ViewController.swift
//  Calculator
//
//  Created by Haamed Sultani on 2018-09-16.
//  Copyright © 2018 Sultani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Instance Variables
    var p1: Double = 0
    var p2: Double = 0
    var result = "0"
    
    // MARK: - IB Outlets
    @IBOutlet weak var numberLabel: UILabel!
    
    // MARK: - View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberLabel.text = result
    }


    // MARK: - IB Actions
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 0 {
            // clear the label
            result = "0"
        } else if sender.tag == 1{
            // change signs
        } else if sender.tag == 2{
            // give percentage
        } else if sender.tag == 3{
            // divide
        } else if sender.tag == 4{
            // enter 7
            result += "7"
        } else if sender.tag == 5{
            // enter 8
            result += "8"
        } else if sender.tag == 6{
            // enter 9
            result += "9"
        } else if sender.tag == 7{
            // multiply
        } else if sender.tag == 8{
            // enter 4
            result += "4"
        } else if sender.tag == 9{
            // enter 5
            result += "5"
        } else if sender.tag == 10{
            // enter 6
            result += "6"
        } else if sender.tag == 11{
            // subtract
        } else if sender.tag == 12{
            // enter 1
            result += "1"
        } else if sender.tag == 13{
            // enter 2
            result += "2"
        } else if sender.tag == 14{
            // enter 3
            result += "3"
        } else if sender.tag == 15{
            // add
            p1 = Double(result)!
            result=""
        } else if sender.tag == 16{
            // enter 0
            result += "0"
        } else if sender.tag == 17{
            // enter decimal
            // check if there is a decimal already entered
            // if not, add the decimal
        } else if sender.tag == 18{
            // get the answer
            p2 = Double(result)!
            result = String(p1+p2)
        }
        
        updateUI() // Update the UI after making changes
    }
    
    
    // MARK: - My Methods
    func updateUI(){
        numberLabel.text = result // Update the label to our new result
    }
}

