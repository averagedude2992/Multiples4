//
//  ViewController.swift
//  Multiples4
//
//  Created by Briano Santos on 8/31/16.
//  Copyright © 2016 FairSkiesTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //Properties
    var numA = 0
    var multiple = 0
    var sum = 0
    
    var maxNumber = 20
   
    
    
    //Outlets
    @IBOutlet weak var multiplesLogo: UIImageView!
    @IBOutlet weak var multipleToAddByTextFld: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var pressAddToAddLabel: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    @IBAction func onPlayBtnPressed(sender: AnyObject) {
        if multipleToAddByTextFld.text != nil && multipleToAddByTextFld.text != "" {
            
            multiplesLogo.hidden = true
            multipleToAddByTextFld.hidden = true
            playBtn.hidden = true
            
            pressAddToAddLabel.hidden = false
            addBtn.hidden = false
            
            multiple = Int(multipleToAddByTextFld.text!)!
        }
    }
    
    @IBAction func onAddBtnPressed(sender: AnyObject) {
        
        sum = numA + multiple
        numA = sum
        
        pressAddToAddLabel.text = "\(numA) + \(multiple) = \(sum)"
        
        isGameOver()
    }
    
    func isGameOver() {
        if sum >= maxNumber {
           restartGame()
        }
    }
    
    func restartGame() {
        
        multiplesLogo.hidden = false
        multipleToAddByTextFld.hidden = false
        playBtn.hidden = false
        
        pressAddToAddLabel.hidden = true
        addBtn.hidden = true
        
        multiple = 0
        multipleToAddByTextFld.text = ""
        
    }
    
    
    
    
    
    // BEGIN stachExchange code (cut/paste) to make the keyboard dissappear when the screen is tapped https://stackoverflow.com/questions/24126678/close-ios-keyboard-by-touching-anywhere-using-swift
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
        // END stachExchange code
    
    
    
    
    
}