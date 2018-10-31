//
//  ViewController.swift
//  Blank App
//
//  Created by DBOI on 10/29/18.
//  Copyright © 2018 ios100. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMessageComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Compose SMS function
        composeSMS()
    }

    //Compose SMS View Controller
    func composeSMS() {
        // Create SMS View Controller
        let composeView = MFMessageComposeViewController()
        composeView.messageComposeDelegate = self
        
        // Configure the fields of the interface.
        composeView.recipients = ["444-444-4444"]
        composeView.body = "PLACEHOLDER"
        
        // Present the view controller modal.
        if MFMessageComposeViewController.canSendText() {
            self.present(composeView, animated: true, completion: nil)
        } else {
            print("Can't send messages.")
        }
    }
    
    //Dismiss SMS View Controller after text sent
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

