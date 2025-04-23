//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Олег Зуев on 21.04.2025.
//

import UIKit



final class LoginViewController : UIViewController {

    //MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    //MARK: - Properties
    private let userName = "1"
    private let password = "1"

    //MARK: - IB Actions
    @IBAction func forgotUserNameAction() {
        showAlet(withTitel: "Oops!", andMessage: ("Your name is " + userName))
    }
    
    @IBAction func forgotPasswordAction() {
        showAlet(withTitel: "Oops!", andMessage: ("Your password is " + password))
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    //MARK: - Private Methods
    private func showAlet(withTitel titel: String, andMessage message: String) {
        let aletr = UIAlertController(title: titel, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        
        aletr.addAction(okAction)
        present(aletr,animated: true)
    }
    
    // MARK: - Segue Preparation
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == userName, passwordTF.text == password else {
            showAlet(
                withTitel: "invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = "Welcome, \(userNameTF.text ?? "") !"
    }
    
    // MARK: - Keyboard Management
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }


    
}

