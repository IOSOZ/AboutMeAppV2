//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by Олег Зуев on 28.04.2025.
//

import UIKit

final class PersonViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet var portretImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    @IBOutlet var favoriteColorLabel: UILabel!
    
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
        view.addVerticalGradientLayer(topCollor: primaryColor, bottomColor: secondaryColor)
        
        portretImage.layer.cornerRadius = portretImage.frame.height / 2
        
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        companyLabel.text = person.company
        jobTitleLabel.text = person.jodTitle
        favoriteColorLabel.text = person.favoriteColor
        
        navigationItem.title = person.fullName
        
        
    }
    
    // MARK: - Segue Preparation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BiographyViewController
        bioVC?.person = person
    }
}


