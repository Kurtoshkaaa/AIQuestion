//
//  ViewController.swift
//  AIQuestion
//
//  Created by Alexey Kurto on 16.04.23.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    /*
     MARK: -
     */
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var inputAPIKey: UITextField!
    
    
    @IBOutlet weak var helpLink: UIButton!
    
    @IBOutlet weak var saveKeyButton: UIButton!
    
    
    /*
     MARK: -
     */
    
    private var APIKey = ""
    
    /*
     MARK: -
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /*
         */
        
        updateUI()
        updateButtonAction()
    }
    
    /*
     */
    
    private func titleSettings() {
        titleLabel.text = "Add your openAI API Key"
    }
    
    /*
     */
    
    private func inputKeyButton() {
        inputAPIKey.placeholder = "Enter API Key"
        
    }
    
    /*
     */
    
    @objc
    private func updateButtonAction() {
        
        /*
         */
        let isValid = inputAPIKey.text
        
        if  isValid == "" {
            saveKeyButton.isEnabled = false
        } else {
            saveKeyButton.isEnabled = true
        }
        
        inputAPIKey.addTarget(self, action: #selector(updateButtonAction), for: .editingChanged)
    }
    
    /*
     */
    
    private func updateUI() {
        
    }
    
    /*
     */
    
    /*
     MARK: - The link opens with APIKey
     */
    
    @IBAction private func pickHelpLinkfunc(_ sender: UIButton) {
        if let urlOpenAI = URL(string: "https://platform.openai.com/account/api-keys") {
            let vc = SFSafariViewController(url: urlOpenAI)
            present(vc, animated: true)
        }
    }
}

    
    
    
    
    

    
    
    
    
    

