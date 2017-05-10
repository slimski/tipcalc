//
//  ViewController.swift
//  TipCalc
//
//  Created by Timur Minnakhmetov on 5/3/17.
//  Copyright © 2017 Timur Minnakhmetov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberToCalc: Int = 0
    
    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var one: UIButton!

    @IBOutlet weak var two: UIButton!
    
    @IBOutlet weak var three: UIButton!
    
    @IBOutlet weak var four: UIButton!
    
    @IBOutlet weak var five: UIButton!
    
    @IBOutlet weak var six: UIButton!
    
    @IBOutlet weak var seven: UIButton!
    
    @IBOutlet weak var eight: UIButton!
    
    @IBOutlet weak var nine: UIButton!
    
    @IBOutlet weak var dotButton: UIButton!
    
    @IBOutlet weak var zero: UIButton!
    
    @IBOutlet weak var delButton: UIButton!
    
    @IBOutlet weak var calcButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func appendOne(_ sender: UIButton) {
        let buttonNumber = 1
        label.text?.append("\(buttonNumber)")
        print(numberToCalc)
    }
    
    @IBAction func appendTwo(_ sender: UIButton) {
        let buttonNumber = 2
        label.text?.append("\(buttonNumber)")
        print(numberToCalc)
    }
    
    @IBAction func appendThree(_ sender: UIButton) {
        let buttonNumber = 3
        label.text?.append("\(buttonNumber)")
        print(numberToCalc)
    }
    
    @IBAction func appendFour(_ sender: UIButton) {
        let buttonNumber = 4
        label.text?.append("\(buttonNumber)")
        print(numberToCalc)
    }
    
    @IBAction func appendFive(_ sender: UIButton) {
        let buttonNumber = 5
        label.text?.append("\(buttonNumber)")
        print(numberToCalc)
    }
    
    @IBAction func appendSix(_ sender: UIButton) {
        let buttonNumber = 6
        label.text?.append("\(buttonNumber)")
        print(numberToCalc)
    }
    
    @IBAction func appendSeven(_ sender: UIButton) {
        let buttonNumber = 7
        label.text?.append("\(buttonNumber)")
        print(numberToCalc)
    }
    
    @IBAction func appendEight(_ sender: UIButton) {
        let buttonNumber = 8
        label.text?.append("\(buttonNumber)")
        print(numberToCalc)
    }
    
    @IBAction func appendNine(_ sender: UIButton) {
        let buttonNumber = 9
        label.text?.append("\(buttonNumber)")
        print(numberToCalc)
    }
    
    @IBAction func appendDot(_ sender: UIButton) {
        let buttonNumber = "."
        if (label.text?.characters.contains("."))! {
        } else  if label.text?.characters.count == 0 {
            label.text?.append("0.")
        } else {
        label.text?.append("\(buttonNumber)")
        print(numberToCalc)
        }
    }
    
    @IBAction func appendZero(_ sender: UIButton) {
        let buttonNumber = 0
        label.text?.append("\(buttonNumber)")
        print(numberToCalc)
    }
    
    @IBAction func deleteStuff(_ sender: UIButton) {
        if (label.text?.characters.count)! > 0 {
            print("More than zero! Delete")
            label.text? = String(self.label.text!.characters.dropLast())
        } else {
            label.text? = ""
        }
        
    }
    
    @IBAction func calcStuff(_ sender: UIButton) {
        print("\(label.text!)")
        if var converted = Double(label.text!) {
        converted *= 1.20
        print("After 20% tips it's going to be" + "\(converted)")
        converted = converted.rounded(.up)
        print("After rounding it's" + "\(converted)")
        if converted > 20.00 {
        while converted.truncatingRemainder(dividingBy: 5.00) > 0 {
            converted += 1.00
            print("\(converted)")
            }
        }
        label.text? = ("\(converted)")
        }
    }
}

