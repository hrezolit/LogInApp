//
//  ViewController.swift
//  LogInAoo
//
//  Created by Nikita on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private properties
    private let userName = "User"
    private let password = "Password"
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "login" else { return }
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.userName = userNameTextField.text
    }
    
    // MARK: - IB Actions
    @IBAction func loginPressed() {
    guard
        userNameTextField.text == userName,
        passwordTextField.text == password
    else {
        showAlert(
            title: "Wrong login or password",
            message: "Please, enter login and password",
            textField: passwordTextField
            )
        return
    }
        performSegue(withIdentifier: "login", sender: nil)
    }
    
    @IBAction func forgotUserNamePressed() {
        showAlert(
            title: "Ooops!",
            message: "Your name is \(userName)"
        )
    }
    @IBAction func forgotPasswordPressed() {
        showAlert(
            title: "Ooops!",
            message: "Your password is \(password )"
        )
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
    
    // MARK: - Alert Controller
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in textField?.text = nil }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension ViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            textField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        } else {
            loginPressed()
        }
        return true
    }
}
