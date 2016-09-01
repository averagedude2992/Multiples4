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
    var multiple = 0
    
    
    //Outlets
    @IBOutlet weak var multiplesLogo: UIImageView!
    @IBOutlet weak var multipleToAddByTextFld: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var pressAddToAddLabel: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    @IBAction func onPlayBtnPressed(sender: AnyObject) {
        if multipleToAddByTextFld.text != nil && multipleToAddByTextFld != "" {
            
            multiplesLogo.hidden = true
            multipleToAddByTextFld.hidden = true
            playBtn.hidden = true
            
            pressAddToAddLabel.hidden = false
            addBtn.hidden = false
            
            
        }
    }
    
    @IBAction func onAddBtnPressed(sender: AnyObject) {
    }
    
    
    
    
    


}

