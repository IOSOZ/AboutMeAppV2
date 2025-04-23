//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Олег Зуев on 22.04.2025.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLable: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLable.text = userName
    }
    
   
    
    

}
