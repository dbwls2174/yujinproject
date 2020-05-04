//
//  DoitViewController.swift
//  project
//
//  Created by SWUCOMPUTER on 2020/05/03.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class DoitViewController: UIViewController {
    
    @IBOutlet var walkBar: UIProgressView!
    @IBOutlet var exerciseBar: UIProgressView!
    @IBOutlet var drinkBar: UIProgressView!
    @IBOutlet var stairsBar: UIProgressView!
    @IBOutlet var vitaminBar: UIProgressView!
    @IBOutlet var changeSelection: UISegmentedControl!
    
    @IBOutlet var walkLabel: UILabel!
    @IBOutlet var exerciseLabel: UILabel!
    @IBOutlet var drinkLabel: UILabel!
    @IBOutlet var stairsLabel: UILabel!
    @IBOutlet var vitaminLabel: UILabel!
    
    
    var infoWalk: String!
    var infoExercise: String!
    var infoDrink: String!
    var infoStairs: String!
    var infoVitamin: String!
    
    var sum1: Float!
    var sum2: Float!
    var sum3: Float!
    var sum4: Float!
    var sum5: Float!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.walkBar.isHidden = true
        self.exerciseBar.isHidden = true
        self.drinkBar.isHidden = true
        self.stairsBar.isHidden = true
        self.vitaminBar.isHidden = true
        
        self.walkLabel.isHidden = true
        self.exerciseLabel.isHidden = true
        self.drinkLabel.isHidden = true
        self.stairsLabel.isHidden = true
        self.vitaminLabel.isHidden = true

        if let num1 = Float(infoWalk) {
            sum1 = num1
        }
        if let num2 = Float(infoExercise) {
            sum2 = num2
        }
        if let num3 = Float(infoDrink) {
            sum3 = num3
        }
        if let num4 = Float(infoStairs) {
            sum4 = num4
        }
        if let num5 = Float(infoVitamin) {
            sum5 = num5
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeSelection(_ sender: UISegmentedControl) {
        let choice = sender.selectedSegmentIndex
        
        if choice == 0 {
            self.walkBar.isHidden = false
            self.exerciseBar.isHidden = true
            self.drinkBar.isHidden = true
            self.stairsBar.isHidden = true
            self.vitaminBar.isHidden = true
            
            self.walkLabel.isHidden = false
            self.exerciseLabel.isHidden = true
            self.drinkLabel.isHidden = true
            self.stairsLabel.isHidden = true
            self.vitaminLabel.isHidden = true
            
            if sum1 == 0 {
                self.walkBar.progress = 1
                let outString1: String = "100%"
                self.walkLabel.text = outString1
            }
        }
        else if choice == 1 {
            self.walkBar.isHidden = true
            self.exerciseBar.isHidden = false
            self.drinkBar.isHidden = true
            self.stairsBar.isHidden = true
            self.vitaminBar.isHidden = true
            
            self.walkLabel.isHidden = true
            self.exerciseLabel.isHidden = false
            self.drinkLabel.isHidden = true
            self.stairsLabel.isHidden = true
            self.vitaminLabel.isHidden = true
            
            if sum2 == 0 {
                self.exerciseBar.progress = 1
                let outString2: String = "100%"
                self.exerciseLabel.text = outString2
            }
        }
        else if choice == 2 {
            self.walkBar.isHidden = true
            self.exerciseBar.isHidden = true
            self.drinkBar.isHidden = false
            self.stairsBar.isHidden = true
            self.vitaminBar.isHidden = true
            
            self.walkLabel.isHidden = true
            self.exerciseLabel.isHidden = true
            self.drinkLabel.isHidden = false
            self.stairsLabel.isHidden = true
            self.vitaminLabel.isHidden = true
            
            if sum3 == 0 {
                self.drinkBar.progress = 1
                let outString3: String = "100%"
                self.drinkLabel.text = outString3
            }
        }
        else if choice == 3 {
            self.walkBar.isHidden = true
            self.exerciseBar.isHidden = true
            self.drinkBar.isHidden = true
            self.stairsBar.isHidden = false
            self.vitaminBar.isHidden = true
            
            self.walkLabel.isHidden = true
            self.exerciseLabel.isHidden = true
            self.drinkLabel.isHidden = true
            self.stairsLabel.isHidden = false
            self.vitaminLabel.isHidden = true
            
            if sum4 == 0 {
                self.stairsBar.progress = 1
                let outString4: String = "100%"
                self.stairsLabel.text = outString4
            }
        }
        else if choice == 4 {
            self.walkBar.isHidden = true
            self.exerciseBar.isHidden = true
            self.drinkBar.isHidden = true
            self.stairsBar.isHidden = true
            self.vitaminBar.isHidden = false
            
            self.walkLabel.isHidden = true
            self.exerciseLabel.isHidden = true
            self.drinkLabel.isHidden = true
            self.stairsLabel.isHidden = true
            self.vitaminLabel.isHidden = false
            
            if sum5 == 0 {
                self.vitaminBar.progress = 1
                let outString5: String = "100%"
                self.vitaminLabel.text = outString5
            }
            
        }
    }
    
    @IBAction func doIt(_ sender: UIButton) {
        let choice = self.changeSelection.selectedSegmentIndex
        
        if choice == 0 {
            if sum1 != 0 {
                self.walkBar.progress += 1/sum1
            }
            var outString1: String = String(Int(self.walkBar.progress*100))
            outString1 += "%"
            self.walkLabel.text = outString1
        }
        else if choice == 1 {
            if sum2 != 0 {
                self.exerciseBar.progress += 1/sum2
            }
            var outString2: String = String(Int(self.exerciseBar.progress*100))
            outString2 += "%"
            self.exerciseLabel.text = outString2
        }
        else if choice == 2 {
            if sum3 != 0 {
                self.drinkBar.progress += 1/sum3
            }
            var outString3: String = String(Int(self.drinkBar.progress*100))
            outString3 += "%"
            self.drinkLabel.text = outString3
        }
        else if choice == 3 {
            if sum4 != 0 {
                self.stairsBar.progress += 1/sum4
            }
            var outString4: String = String(Int(self.stairsBar.progress*100))
            outString4 += "%"
            self.stairsLabel.text = outString4
        }
        else if choice == 4 {
            if sum5 != 0 {
                self.vitaminBar.progress += 1/sum5
            }
            var outString5: String = String(Int(self.vitaminBar.progress*100))
            outString5 += "%"
            self.vitaminLabel.text = outString5
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "finalView" {
            let destVC = segue.destination as! FinalViewController
           
            destVC.infoWalk = String(Int(self.walkBar.progress*100))
            destVC.infoExercise = String(Int(self.exerciseBar.progress*100))
            destVC.infoDrink = String(Int(self.drinkBar.progress*100))
            destVC.infoStairs = String(Int(self.stairsBar.progress*100))
            destVC.infoVitamin = String(Int(self.vitaminBar.progress*100))
            
            destVC.title = title
        }
    }
}
