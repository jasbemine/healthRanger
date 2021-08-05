//
//  LoginViewController.swift
//  healthRanger
//
//  Created by Madeline Day on 8/4/21.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet weak var mailT: UITextField!
    @IBOutlet weak var pwT: UITextField!
    
    
    var email = ""
    var password = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorT.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var errorT: UILabel!
    
    @IBAction func loginTapped(_ sender: UIButton) {
        let email: String = mailT.text!
        let password: String = pwT.text!
        if email == "healthranger@gmail.com" && password == "kodewithklossy"{
            self.performSegue(withIdentifier: "loginSegue", sender: sender)
        }
        else {
            
            errorT.isHidden = false
            errorT.text = "Incorrect Login"
            
        }
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
