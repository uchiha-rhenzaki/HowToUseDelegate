//
//  SecondViewController.swift
//  HowToUseDelegate
//
//  Created by Edward P. Legaspi on 22/12/2015.
//  Copyright © 2015 Brood Camp. All rights reserved.
//

import UIKit

protocol AddContactViewControllerDelegate {
    func didFetchContacts( name : String)
}

class SecondViewController: UIViewController {
    
    
    var delegate: AddContactViewControllerDelegate!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func btDelegate(sender: UIButton) {
                delegate.didFetchContacts("Edmond")
    }

  

}
