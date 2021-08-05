//
//  HeartRateViewController.swift
//  healthRanger
//
//  Created by Madeline Day on 8/4/21.
//

import UIKit

class HeartRateViewController: UIViewController {

 
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var output2Label: UILabel!
    
    @IBOutlet weak var heartrateTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.isHidden = true
        output2Label.isHidden = true
        // Do any additional setup after loading the view.
    }
   
    lazy var heartString = heartrateTextField!.text
    lazy var rateNum = Int(heartString!)
    
    @IBAction func submitTap(_ sender: UIButton) {
        outputLabel.isHidden = false
        output2Label.isHidden = false
        if rateNum! >= 49 && rateNum! <= 66 {
            outputLabel.text = "Your resting heart rate is excellent, below the average range"
            output2Label.text = "Continue your current exercise and healthy diet routine"
        }
        else if rateNum! >= 67 && rateNum! <= 74 {
            outputLabel.text = "Your resting heart rate is in the average range"
            output2Label.text = "Increase your current exercise routine and incorporate more heart-healthy foods (Omega-3, whole grains, fiber) into your diet"
        }
        else { outputLabel.text = "Your resting heart rate is higher than the average range"
            output2Label.text = "Please consult your physician"
            
        }
    }
  
    
    @IBAction func redoTapped(_ sender: Any) {
        outputLabel.isHidden = true
        output2Label.isHidden = true
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
