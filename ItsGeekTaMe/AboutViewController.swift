//
//  AboutViewController.swift
//  ItsGeekTaMe
//
//  Created by Mary Grace Lucas on 1/18/16.
//  Copyright © 2016 NinnyWorks. All rights reserved.
//

import UIKit
import MessageUI


class AboutViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var aboutCardView: UIView!
    
    // Declares and instantiates a background view
    let backgroundView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = Colors.mintGreenAccent
        
        // Rounds card corners and adds slight shadow as border
        self.aboutCardView.layer.cornerRadius = 4
        self.aboutCardView.layer.masksToBounds = true
        self.aboutCardView.layer.borderColor = UIColor.grayColor().CGColor
        self.aboutCardView.layer.borderWidth = 0.3
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    // Allows user to call It's Geek Ta Me
    @IBAction func phoneButtonPressed(sender: UIButton) {
        UIApplication.sharedApplication().openURL(NSURL(string : "tel://2084069743")!)

    }
    
        // Allows user to email It's Geek Ta Me
    @IBAction func emailButtonPressed(sender: UIButton) {
        
        let emailTitle = "IT'S GEEK TA ME Service Request"
        let emailMessageText = "Tell us how we can help!"
        let toRecipent = ["ItsGeekTaMe@gmail.com"]
        let mailCompose: MFMailComposeViewController = MFMailComposeViewController()
        mailCompose.mailComposeDelegate = self
        mailCompose.setSubject(emailTitle)
        mailCompose.setMessageBody(emailMessageText, isHTML: false)
        mailCompose.setToRecipients(toRecipent)
        
        self.presentViewController(mailCompose, animated: true, completion: nil)
        

    }
    
        // Allows user to open a Facebook webview
    @IBAction func facebookButtonPressed(sender: UIButton) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://www.facebook.com/ItsGeekTaMeMobileTechnologyDoctor/")!)
        
        
    }
    
        // Allows user to open a Twitter webview
    @IBAction func twitterButtonPressed(sender: UIButton) {
                UIApplication.sharedApplication().openURL(NSURL(string: "https://twitter.com/cbyteme")!)
        
    }
    
    // MARK: MFMailComposeViewControllerDelegate
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
        
    }

    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
    
}
