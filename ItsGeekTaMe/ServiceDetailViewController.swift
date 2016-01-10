//
//  ServiceDetailViewController.swift
//  ItsGeekTaMe
//
//  Created by Mary Grace Lucas on 1/9/16.
//  Copyright © 2016 NinnyWorks. All rights reserved.
//

import UIKit

class ServiceDetailViewController: UIViewController {
    
    
    var selectedRow: Int!
    
    
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
    
    
    @IBOutlet weak var detailsTextView: UITextView!
    
    
    @IBAction func emailAGeekButtonPressed(sender: UIButton) {
    }
    
    @IBAction func callAGeekButtonPressed(sender: UIButton) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        detailsTextView.text = serviceDetailArray[selectedRow]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
