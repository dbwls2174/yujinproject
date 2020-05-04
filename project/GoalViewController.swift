//
//  GoalViewController.swift
//  project
//
//  Created by SWUCOMPUTER on 2020/05/03.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class GoalViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var walkLable: UILabel!
    @IBOutlet var exerciseLable: UILabel!
    @IBOutlet var drinkLable: UILabel!
    @IBOutlet var stairsLable: UILabel!
    @IBOutlet var vitaminLable: UILabel!
    
    @IBOutlet var buttonWalk: UIButton!
    @IBOutlet var buttonExercise: UIButton!
    @IBOutlet var buttonDrinking: UIButton!
    @IBOutlet var buttonStairs: UIButton!
    @IBOutlet var buttonVitamin: UIButton!
    
    @IBOutlet var pickerView: UIPickerView!
    
    
    let goalArray: Array<String> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return goalArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return goalArray[row]
    }
  
    @IBAction func buttonPick(_ sender: UIButton) {
        let selected = sender.titleLabel?.text
        if selected == "걷기"{
            self.walkLable.text = goalArray[self.pickerView.selectedRow(inComponent: 0)]
        }
            else if selected == "운동하기"{
            self.exerciseLable.text = goalArray[self.pickerView.selectedRow(inComponent: 0)]
        }
        else if selected == "물 마시기"{
            self.drinkLable.text = goalArray[self.pickerView.selectedRow(inComponent: 0)]
        }
        else if selected == "계단 오르기"{
            self.stairsLable.text = goalArray[self.pickerView.selectedRow(inComponent: 0)]
        }
        else if selected == "비타민 먹기"{
            self.vitaminLable.text = goalArray[self.pickerView.selectedRow(inComponent: 0)]
        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startView" {
            let destVC = segue.destination as! DoitViewController
           
            destVC.infoWalk = self.walkLable.text
            destVC.infoExercise = self.exerciseLable.text
            destVC.infoDrink = self.drinkLable.text
            destVC.infoStairs = self.stairsLable.text
            destVC.infoVitamin = self.vitaminLable.text
            
            destVC.title = title
        }
    }

    
}
