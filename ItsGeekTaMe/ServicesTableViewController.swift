//
//  ServicesTableViewController.swift
//  ItsGeekTaMe
//
//  Created by Mary Grace Lucas on 1/9/16.
//  Copyright © 2016 NinnyWorks. All rights reserved.
//

import UIKit


class ServicesTableViewController: UITableViewController {
    
    
    let servicesArray = ["New and Used Computers", "​Web Design", "Network and Internet Managment", "System O﻿ptimization", "Virus and Malware Management", "Additional Services"]
    
    let servicesImageArray = [UIImage(named: "computers_icon"), UIImage(named: "web_design_icon"), UIImage(named: "network_icon"), UIImage(named: "system_icon"), UIImage(named: "virus_icon"), UIImage(named: "additional_icon")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.tableView.backgroundColor = Colors.mintGreenAccent
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return servicesArray.count
        
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("serviceCell", forIndexPath: indexPath) as! ServiceTableViewCell
        
        cell.serviceDetailLabel.text = servicesArray[indexPath.row]
        cell.serviceImageView.image = servicesImageArray[indexPath.row]
        cell.backgroundColor = Colors.mintGreenAccent
        cell.cardView.layer.cornerRadius = 4
        cell.cardView.layer.masksToBounds = true
        cell.cardView.layer.borderColor = UIColor.grayColor().CGColor
        cell.cardView.layer.borderWidth = 0.3
        
//        
//        
//        view.layer.borderColor = UIColor.grayColor().CGColor;
//        view.layer.borderWidth = 0.5;
        
//
//        view.layer.cornerRadius = 10;
//        view.layer.masksToBounds = true;
        
        
        //        cell.textLabel?.text = servicesArray[indexPath.row]
        
        
        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the item to be re-orderable.
    return true
    }
    */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showServiceDetailSegue" {
            
            // Get the new view controller using segue.destinationViewController.
            let serviceDetailViewController = segue.destinationViewController as! ServiceDetailViewController
            
            // Pass the selected object to the new view controller.
            serviceDetailViewController.selectedRow = self.tableView.indexPathForSelectedRow?.row
            
        }
        
        
    }
    
}
