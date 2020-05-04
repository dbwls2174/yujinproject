//
//  FinalViewController.swift
//  project
//
//  Created by SWUCOMPUTER on 2020/05/04.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet var walkLabel: UILabel!
    @IBOutlet var exerciseLabel: UILabel!
    @IBOutlet var drinkLabel: UILabel!
    @IBOutlet var stairsLabel: UILabel!
    @IBOutlet var vitaminLabel: UILabel!
    
    @IBOutlet var resultImageView: UIImageView!
    
    var infoWalk: String!
    var infoExercise: String!
    var infoDrink: String!
    var infoStairs: String!
    var infoVitamin: String!
    
    var walk: Float!
    var exercise: Float!
    var drink: Float!
    var stairs: Float!
    var vitamin: Float!
    var sum: Float!
    var sum1: Float!
    var sum2: Float!
    var avg: Float!
    
    let veryGoodImage = UIImage(named: "one.jpg")
    let goodImage = UIImage(named: "two.jpg")
    let sosoImage = UIImage(named: "three.jpg")
    let badImage = UIImage(named: "four.jpg")
    let question = UIImage(named: "question.jpg")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        walkLabel.text = infoWalk
        exerciseLabel.text = infoExercise
        drinkLabel.text = infoDrink
        stairsLabel.text = infoStairs
        vitaminLabel.text = infoVitamin
        
        if let _walk = Float(infoWalk) {
            walk = _walk
        }
        if let _exercise = Float(infoExercise){
            exercise = _exercise
        }
        if let _drink = Float(infoDrink){
            drink = _drink
        }
        if let _stairs = Float(infoStairs){
            stairs = _stairs
        }
        if let _vitamin = Float(infoVitamin){
            vitamin = _vitamin
        }
        
        sum1 = walk + exercise
        sum2 = drink + stairs + vitamin
        sum = sum1 + sum2
        avg = sum / 5
        // Do any additional setup after loading the view.
        
        resultImageView.image = question
    }
    
    @IBAction func calculation() {
        if avg > 90 {
            resultImageView.image = veryGoodImage
        }else if avg > 70 {
            resultImageView.image = goodImage
        }else if avg > 50 {
            resultImageView.image = sosoImage
        }else {
            resultImageView.image = badImage
        }
    }
}
