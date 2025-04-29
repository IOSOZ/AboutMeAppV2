//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Олег Зуев on 22.04.2025.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var welcomeLable: UILabel!
    @IBOutlet var introduceLabel: UILabel!
    
    //MARK: - Properties
    var person: Person!
    var user: User!
    
    private let primaryColor = UIColor(
        red: 108/255,
        green: 214/255,
        blue: 171/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 197/255,
        green: 215/255,
        blue: 55/255,
        alpha: 1
    )
    
    // MARK: - Life Cycle 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topCollor: primaryColor, bottomColor: secondaryColor)
        welcomeLable.text = "Welcome, \(user.userName)"
        introduceLabel.text = "My name is \(person.fullName)"
    }
}

    


// MARK: - GradientView
    extension UIView {
        func addVerticalGradientLayer(topCollor: UIColor, bottomColor: UIColor) {
            let gradient = CAGradientLayer()
            gradient.frame = bounds
            gradient.colors = [topCollor.cgColor, bottomColor.cgColor]
            gradient.locations = [0.0, 1.0]
            gradient.startPoint = CGPoint(x: 0, y: 0)
            gradient.endPoint = CGPoint(x: 0, y: 1)
            layer.insertSublayer(gradient, at: 0)
        }
}
