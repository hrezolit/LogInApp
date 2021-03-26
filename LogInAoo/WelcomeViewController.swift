//
//  WelcomeViewController.swift
//  LogInAoo
//
//  Created by Nikita on 25.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    
    // MARK: - Public properties
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "\(userName ?? "User"), you're in system!"
    }
}
