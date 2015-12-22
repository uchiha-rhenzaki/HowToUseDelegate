//
//  ViewController.swift
//  HowToUseDelegate
//
//  Created by Edward P. Legaspi on 22/12/2015.
//  Copyright © 2015 Brood Camp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AddContactViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didFetchContacts(name : String) {
        print("i'm here" + name)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let addContactViewController = segue.destinationViewController as! SecondViewController
        addContactViewController.delegate = self
         
    }


}

