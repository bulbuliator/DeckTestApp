//
//  ViewController.swift
//  DeckTestApp
//
//  Created by Bulbuliator on 14.02.16.
//  Copyright © 2016 BulbuliatorInc. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowSecondScreenView" {
            if let destViewController = segue.destinationViewController as? SecondScreenViewController {
                destViewController.recievedString = myTextField.text!
            }
        }
    }


    
}

