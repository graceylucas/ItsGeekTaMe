//
//  AboutViewController.swift
//  ItsGeekTaMe
//
//  Created by Mary Grace Lucas on 1/18/16.
//  Copyright © 2016 NinnyWorks. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    let gradientLayer = CAGradientLayer()
    
    
    // Declares and instantiates a background view
    let backgroundView = UIView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

        // Sets the size/shape of the background view
        self.backgroundView.frame = self.view.frame
        
        // Adds the background view as a subview to the View Controller's main view
        self.view.addSubview(self.backgroundView)

        // Sends the newly created background view to the back, behind the controls (text, buttons, etc.)
        self.view.sendSubviewToBack(backgroundView)
        
        // Sets the background view to the newly created gradient
        self.setGradientBackground()
        
    }
    
    

    func setGradientBackground() {
        
        // Creates gradient in background using Colors struct
        gradientLayer.frame = self.view.bounds
        
        gradientLayer.colors = [Colors.darkBlue.CGColor, Colors.lightBlue.CGColor]
        
        gradientLayer.locations = [0.4, 0.95]
        
        self.backgroundView.layer.addSublayer(gradientLayer)
        
        
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
