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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
