//
//  ViewController.swift
//  AttributedAlertText
//
//  Created by Bharath R on 04/10/17.
//  Copyright © 2017 Bharath R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // MARK: - Different text style in alertController
    
    @IBAction func buttonPressed(_ sender: Any) {
        // Sample attributed text
        let attributedText = applyDifferentStyle(forString: "Hello", inString: "Hello world")
        
        // Alert controller
        let alertController = UIAlertController(title: "Attributed texts example", message: nil, preferredStyle: .alert)
        
        // OK button in alert
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okButton)
        
        // Assign attributed text
        alertController.setValue(attributedText, forKey: "attributedMessage")
        
        // Show alert
        present(alertController, animated: true, completion: nil)
    }
    
    func applyDifferentStyle(forString: String, inString: String) -> NSMutableAttributedString {
        // Let your color be as follows with the alpha value as you wanted
        let greenColour = UIColor(red: 10/255, green: 190/255, blue: 50/255, alpha: 0.7)
        let redColor = UIColor.red
        
        // create the attribute as you want
        let customAttribute = [NSAttributedStringKey.foregroundColor : greenColour];
        
        // Other normal text attribute
        let normalTextAttributes = [NSAttributedStringKey.foregroundColor : redColor]
        
        let attString:NSMutableAttributedString = NSMutableAttributedString(string: inString
            , attributes: normalTextAttributes)
        
        // Apply attribute to texts
        let stringRange = (inString as NSString).range(of: forString)
        attString.setAttributes(customAttribute, range: stringRange)
        
        return attString
    }


}

