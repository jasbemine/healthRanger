//
//  HistoryViewController.swift
//  healthRanger
//
//  Created by Madeline Day on 8/4/21.
//

import UIKit

class HistoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func hrTextField(_ sender: UITextField) {
        lineL.text = "65"
    }
    @IBOutlet weak var lineL: UILabel!
    

    @IBOutlet weak var bpLine: UILabel!
    
    @IBAction func bpTextField(_ sender: UITextField) {
        bpLine.text = "126/78"
    }
    

    @IBAction func viewHistory(_ sender: UIButton) {
        lineL.text = "65"
        bpLine.text = "126/78"
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

/*
extension HistoryViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // to be always updated, you cannot use textField.text directly, because after this method gets called, the textField.text will be changed
        let newStringInTextField = (hrTextField.text as NSString?)?.replacingCharacters(in: range, with: string)
        lineL.text = "\(newStringInTextField) smthg"
        return true
    }
}
 */
