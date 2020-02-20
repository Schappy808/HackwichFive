//
//  ViewController.swift
//  HackwichFive
//
//  Created by CM Student on 2/20/20.
//  Copyright © 2020 Steven Chapman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //created an ibaction to create a series of tasks. The code makes it so the first label will say My Favorite Foods on launch, and the second label is set to cycle through five different food names by using a variable of type Integer with a string attached.
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
   
    @IBOutlet weak var buttonLabel: UIButton!
    var currentIndex = 0
    var favoriteFoodArray = ["Pizza", "Burgers", "Steak", "Ribs", "Pasta"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   self.topLabel.text = "My Favorite Foods"
    }
   
    
   
    
    
    @IBAction func buttonPressed(_ sender: Any) {
   
    self.bottomLabel.text =  favoriteFoodArray[currentIndex]
    
    if self.currentIndex < self.favoriteFoodArray.count
    {
    
    currentIndex+=1
    buttonLabel.setTitle("Next", for: UIControl.State.normal)
    
    
    
    }
    else
    {
    
    (sender as! UIButton).isEnabled = false
    
    }
    
    
}

    

}

