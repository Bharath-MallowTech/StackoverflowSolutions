//
//  SelectActionController.swift
//  viewcontrollerDismissAndPush
//
//  Created by Bharath R on 29/09/17.
//  Copyright © 2017 Bharath R. All rights reserved.
//

import UIKit

protocol SelectActionControllerDelegate {
    func dismissed()
}

class SelectActionController: UIViewController {

    var delegate: SelectActionControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        dismiss(animated: true) {
            // Do Nothing
            self.delegate?.dismissed()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
