//
//  ViewController.swift
//  TipCalc
//
//  Created by Timur Minnakhmetov on 5/3/17.
//  Copyright © 2017 Timur Minnakhmetov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

       
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = ""
    }
    
    @IBAction func appendDigit(_ sender: UIButton) {
        if let digit = sender.titleLabel?.text {
            label.text?.append(digit)
            print(label.text ?? "label hasn't text")
        } else {
            print("button hasn't title")
        }
    }
    
    @IBAction func appendDot(_ sender: UIButton) {
        let buttonNumber = "."
        if (label.text?.characters.contains("."))! {
        } else  if label.text?.characters.count == 0 {
            label.text?.append("0.")
        } else {
        label.text?.append("\(buttonNumber)")
        }
    }
    
    @IBAction func deleteStuff(_ sender: UIButton) {
        if (label.text?.characters.count)! > 0 {
            print("More than zero! Delete")
            label.text = String(self.label.text!.characters.dropLast())
        } else {
            label.text = ""
        }
        
    }
    
    @IBAction func calcStuff(_ sender: UIButton) {
        guard let text = label.text else {
            print("label hasn't text")
            return;
        }
        
        print(text)
        if var converted = Double(text) {
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
            label.text = ("\(converted)")
        }
    }
}

