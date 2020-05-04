//
//  ViewController.swift
//  project
//
//  Created by SWUCOMPUTER on 2020/05/03.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var myText: UITextField!
    @IBOutlet var startFighting: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func displayName() {
        let myName: String? = myText.text!
        var outString: String! = myName
        outString += "님, 오늘도 건강을 위해서 화이팅!"
        
        startFighting.text = outString
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        destination.title = myText.text! + "님의 건강"
    }
    
}

