//
//  BloodPressureViewController.swift
//  healthRanger
//
//  Created by Madeline Day on 8/4/21.
//

import UIKit

class BloodPressureViewController: UIViewController {

    @IBOutlet weak var systolicTextField: UITextField!
    
    @IBOutlet weak var diastolicTextField: UITextField!
    
    @IBOutlet weak var outputLabel1: UILabel!
    
    @IBOutlet weak var outputLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel1.isHidden = true
        outputLabel2.isHidden = true
        // Do any additional setup after loading the view.
    }
    lazy var systolicString = systolicTextField!.text
    lazy var rateNum = Int(systolicString!)
    
    lazy var diastolicString = diastolicTextField!.text
    lazy var presRate = Int(diastolicString!)
    
    
    @IBAction func submitDone(_ sender: UIButton) {
        outputLabel1.isHidden = false
        outputLabel2.isHidden = false
        if rateNum! <= 129 && presRate! <= 80 {
            outputLabel1.text = "Your blood pressure is in a normal range"
            outputLabel2.text = "Maintain a healthy diet high in whole grains, fresh fruits, and vegetables. Continue to exercise at least 2 hours and 30 minutes per week."
        } else if rateNum! >= 121 && rateNum! <= 129 && presRate! <= 80 {
            outputLabel1.text = "Your blood pressure is in an elevated range and you are at risk for hypertension"
            outputLabel2.text = "Change your diet by increasing intake of whole grains, fresh fruits, and vegetables. Exercise for at least 2 hours and 30 minutes a week and limit smoking, drinking, and caffeine consumption."
        } else if rateNum! >= 130 && rateNum! <= 139 && presRate! >= 81 && presRate! <= 89 {
            outputLabel1.text = "Your blood pressure is in the range of Hypertension Stage 1"
            outputLabel2.text = "Keep a food diary and follow the NIH's DASH Diet, with foods such as fresh fruit, protein, and vegetables. Limit consumption of foods high in sodium or fat. Exercise for at least 2 hours and 30 minutes a week and stop smoking and drinking "
            
        } else if rateNum! >= 140 && rateNum! <= 180 && presRate! >= 90 && presRate! <= 120 {
            outputLabel1.text = "Your blood pressure is in the range of Hypertension Stage 2"
            outputLabel2.text = "Follow the NIH's DASH Diet. Cut out foods high in sodium or fat and consume fresh fruit, whole grains,  vegetables, and lean protein. Exercise for at least 2 hours and 30 minutes a week, sleep, limit caffeine consumption, and stop smoking and drinking"
        } else if rateNum! >= 181 && presRate! >= 121 {
            outputLabel1.text = "Your blood pressure is in the range of a hypertensive crisis"
            outputLabel2.text = "Consult your physician immediately"
        } else {
            outputLabel1.text = "Your blood pressure is in an ambiguous range"
            outputLabel2.text = "Please consult your physician for additional information"
        }
    }
    
    @IBAction func redoB(_ sender: UIButton) {
        outputLabel1.isHidden = true
        outputLabel2.isHidden = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
