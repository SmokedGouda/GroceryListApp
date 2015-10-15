//
//  ItemDetailViewController.swift
//  GroceryList
//
//  Created by Craig Carlson on 10/14/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {

  
    @IBOutlet weak var itemDetailLabel: UILabel!
    @IBOutlet weak var itemDetailTextField: UITextView!
    
    var itemDetails = ItemDetailDescriptions()
    var itemDetailLabelText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemDetailLabel.text = itemDetailLabelText
        switch itemDetailLabel.text! {
            case "Milk":
                itemDetailTextField.text = itemDetails.milk
            case "OJ":
                itemDetailTextField.text = itemDetails.oj
            case "Bread":
                itemDetailTextField.text = itemDetails.bread
            case "Lunchmeat":
                itemDetailTextField.text = itemDetails.lunchmeat
            case "Chips":
                itemDetailTextField.text = itemDetails.chips
            case "Balloons":
                itemDetailTextField.text = itemDetails.ballons
            case "Ice Cream":
                itemDetailTextField.text = itemDetails.iceCream
            case "Cake":
                itemDetailTextField.text = itemDetails.cake
            case "Ghetto Blaster":
                itemDetailTextField.text = itemDetails.ghettoBlaster
            case "Dirty Blonde":
                itemDetailTextField.text = itemDetails.dirtyBlonde
            case "Milkshake Stout":
                itemDetailTextField.text = itemDetails.milkshakeStout
            default:
                itemDetailTextField.text = "Not on your list"
            }
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
