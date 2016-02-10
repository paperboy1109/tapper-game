//
//  ViewController.swift
//  tapper-game
//
//  Created by Daniel J Janiak on 2/9/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    //Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTapsText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() {
            
            // Restart the game
            restartGame()
        }
        
    }
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        
        //Validation
        if (howManyTapsText.text != nil) && (howManyTapsText.text != "") {
            
            logoImage.hidden = true
            playButton.hidden = true
            howManyTapsText.hidden = true
            
            tapButton.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsText.text!)!
            currentTaps = 0
            
            updateTapsLabel()
            
        }
        
    }
    
    func isGameOver() -> Bool {
        
        if currentTaps >= maxTaps {
            
            return true
            
        } else {
            
            return false
        }
    }
    
    func restartGame() {
        
        maxTaps = 0
        howManyTapsText.text = ""
        
        logoImage.hidden = false
        playButton.hidden = false
        howManyTapsText.hidden = false
        
        tapButton.hidden = true
        tapsLabel.hidden = true
        
    }
    
    func updateTapsLabel() {
        
        tapsLabel.text = "\(currentTaps) Taps"
        
    }
    
    

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

