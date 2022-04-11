//
//  LoginViewController.swift
//  zwallet
//
//  Created by user217075 on 4/7/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var formWrapper: UIView!
    
    @IBOutlet weak var emailIcon: UIImageView!
    @IBOutlet weak var passwordIcon: UIImageView!
    @IBOutlet weak var togglePassword: UIImageView!
    
    
    @IBOutlet weak var tintEmail: UIView!
    @IBOutlet weak var tintPassword: UIView!
    
    @IBOutlet weak var inputEmail: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formWrapper.layer.cornerRadius = 50
        formWrapper.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]

        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: Any) {
        
        
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


extension LoginViewController: LoginViewProtocol {
    func showError() {
//        do something
    }
    
    
}
