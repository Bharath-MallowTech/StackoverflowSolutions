//
//  DownloadsViewController.swift
//  viewcontrollerDismissAndPush
//
//  Created by Bharath R on 29/09/17.
//  Copyright © 2017 Bharath R. All rights reserved.
//

import UIKit

class DownloadsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        let selectActionVC = storyboard?.instantiateViewController(withIdentifier: "SelectActionController") as? SelectActionController
        selectActionVC?.delegate = self
        let navCon = UINavigationController(rootViewController: selectActionVC!)
        present(navCon, animated: true, completion: nil)
    }

}

extension DownloadsViewController: SelectActionControllerDelegate {
    func dismissed() {
        let fileVC = storyboard?.instantiateViewController(withIdentifier: "fileInfoViewController")
        navigationController?.pushViewController(fileVC!, animated: true)
    }
}
