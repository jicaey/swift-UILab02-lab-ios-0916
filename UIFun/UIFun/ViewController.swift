//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets

    @IBOutlet weak var paintBucket: UIView!
    @IBOutlet weak var controlOne: UISegmentedControl!
    @IBOutlet weak var controlTwo: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucket.backgroundColor = UIColor.redColor()
        // TODO: Set the initial paint color to "red"
    }

    func mixColors(withFirst first: String, second: String) -> String {
        if first == "red" && second == "red" {
            paintBucket.backgroundColor = UIColor.redColor()
        }else if first == "red" && second == "yellow" {
            paintBucket.backgroundColor = UIColor.orangeColor()
        }else if first == "red" && second == "blue" {
            paintBucket.backgroundColor = UIColor.purpleColor()
            
        }else if first == "yellow" && second == "red" {
            paintBucket.backgroundColor = UIColor.orangeColor()
        }else if first == "yellow" && second == "yellow" {
            paintBucket.backgroundColor = UIColor.yellowColor()
        }else if first == "yellow" && second == "blue" {
            paintBucket.backgroundColor = UIColor.blueColor()
            
        }else if first == "blue" && second == "red" {
            paintBucket.backgroundColor = UIColor.purpleColor()
        }else if first == "blue" && second == "yellow" {
            paintBucket.backgroundColor = UIColor.greenColor()
        }else if first == "blue" && second == "blue" {
            paintBucket.backgroundColor = UIColor.blueColor()
        }
        return (String(paintBucket.backgroundColor))
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        var first: String = ""
        var second: String = ""
    
        switch controlOne.selectedSegmentIndex {
        case 0:
            first = "red"
        case 1:
            first = "yellow"
        case 2:
            first = "blue"
        default: break
        }
        
        switch controlTwo.selectedSegmentIndex {
        case 0:
            second = "red"
        case 1:
            second = "yellow"
        case 2:
            second = "blue"
        default: break
        }
        mixColors(withFirst: first, second: second)

        // TODO: Mix each selected color and set the paint color to the mixed color
    }
}
