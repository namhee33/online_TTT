//
//  ViewController.swift
//  online-TTT
//
//  Created by Maric Sobreo on 1/16/16.
//  Copyright © 2016 Maric Sobreo (Coding Dojo). All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, cancelProtocol {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func joinButtonPressed(sender: UIButton) {
        guard nameTextField.text! != "" else { return }
        print(nameTextField.text!)
        performSegueWithIdentifier("SignedInSegue", sender: sender)
    }
    
    
    func cancelGameSearch(controller: LoadScreenViewController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SignedInSegue" {
            let controller = segue.destinationViewController as! LoadScreenViewController
            controller.cancelDelegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

