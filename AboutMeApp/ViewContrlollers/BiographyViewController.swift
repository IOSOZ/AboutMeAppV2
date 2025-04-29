//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Олег Зуев on 28.04.2025.
//

import UIKit

final class BiographyViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet var bioLabel: UILabel!
    
    //MARK: - Properties
    var person: Person!
    
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
        navigationItem.title = person.fullName
        bioLabel.text = person.bio
        view.addVerticalGradientLayer(topCollor: primaryColor, bottomColor: secondaryColor)
    }
}
