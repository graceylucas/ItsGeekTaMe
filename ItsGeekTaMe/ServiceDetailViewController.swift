//
//  ServiceDetailViewController.swift
//  ItsGeekTaMe
//
//  Created by Mary Grace Lucas on 1/9/16.
//  Copyright © 2016 NinnyWorks. All rights reserved.
//

import UIKit
import MessageUI


class ServiceDetailViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    var selectedRow: Int!
    
    var detailTitle: String!
    
    
    @IBOutlet weak var serviceDetailTitleLabel: UILabel!
    
    @IBOutlet weak var detailCardView: UIView!
    
    @IBOutlet weak var detailsTextView: UITextView!
    
    
    let serviceDetailArray = [
        
        // New and Used Computers
        "Whether you need the latest gaming device or just want to keep up with the grandkids on Facebook, IT'S GEEK TA ME will build you a custom machine. Business users will be delighted to know that they don't have to have all the 'junk software' that come on most brand-name computers. IT'S GEEK TA ME can build a computer tailored specifically to your needs or sell you one of our lovingly re-furbished ones.",
        
        // Web Design
        "IT'S GEEK TA ME web design team can help you start that web-based business you've always wanted or just want a personal site to showcase your family or hobby.",
        
        // Network and Internet Management
        "Whether you need your wireless internet configured or your business network maintained, IT'S GEEK TA ME can help. Our technicians are both Microsoft and Network Certified. We work with local internet providers and are familiar with their services.",
        
        // System Optimization
        "All computer systems slow down over time. IT'S GEEK TA ME can make yours run like like the day it was new. This combination of software and hardware enhancement is guaranteed to make you smile!",
        
        // Virus and Malware Management
        "There are over 3,000 new viruses released every day onto the internet. Don't be caught with inadequate protection. IT'S GEEK TA ME Virus Threat Pack is the perfect answer to continual protection.",
        
        // Additional Services
        "IT'S GEEK TA ME can setup any of your electronic devices. You name it: Smart TV, iPad, iPod, tablet, gaming device, DVR, TiVo, and more. We have 30+ years experience in electronics!" ]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        detailsTextView.text = serviceDetailArray[selectedRow]
        serviceDetailTitleLabel.text = detailTitle
        
        self.view.backgroundColor = Colors.mintGreenAccent
        
        // Rounds card corners and adds slight shadow as border
        self.detailCardView.layer.cornerRadius = 4
        self.detailCardView.layer.masksToBounds = true
        self.detailCardView.layer.borderColor = UIColor.grayColor().CGColor
        self.detailCardView.layer.borderWidth = 0.3
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    // Lets user email It's Geek Ta Me
    @IBAction func emailAGeekButtonPressed(sender: UIButton) {
        
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
    
    // Lets user call It's Geek Ta Me
    @IBAction func callAGeekButtonPressed(sender: UIButton) {
        UIApplication.sharedApplication().openURL(NSURL(string : "tel://2084069743")!)
        
    }
    // MARK: MFMailComposeViewControllerDelegate
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    //    func showSendMailErrorAlert() {
    //        let sendMailErrorAlert = UIAlertController(title: "Could Not Send Email", message: "Your device could not send email.  Please check your device's email settings and try again.", delegate: self, cancelButtonTitle: "OK")
    //        sendMailErrorAlert.show()
    //    }
    //
    
    
}
