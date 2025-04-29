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
    private let user = User.getUser()
    private let person = Person.getPerson()

    // MARK: - Segue Preparation
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user.userName, passwordTF.text == user.password else {
            showAlet(
                withTitel: "invalid login or password",
                andMessage: "Please, enter correct login and password") {
                    self.passwordTF.text = ""
                }
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        tabBarVC?.viewControllers?.forEach { ViewController in
            if let welcomeVC = ViewController as? WelcomeViewController {
                welcomeVC.user = user
                welcomeVC.person = person
            } else if let navigationController = ViewController as? UINavigationController,
                      let personVC = navigationController.viewControllers.last as? PersonViewController {
                personVC.person = person
            }
        }
    }
    
    // MARK: - Keyboard Management
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    //MARK: - IB Actions
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlet(withTitel: "Oops!", andMessage: "Your name is \(user.userName)")
        : showAlet(withTitel: "Oops!", andMessage: "Your password is \(user.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = "user"
        passwordTF.text = "1"
    }
    
    //MARK: - Private Methods
    private func showAlet(
        withTitel titel: String,
        andMessage message: String,
        completion: (() -> Void)? = nil
    ) { let aletr = UIAlertController(title: titel, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        aletr.addAction(okAction)
        present(aletr,animated: true)
    }
}

