//
//  StatusUpdateTableViewController.swift
//  LocationTracker
//
//  Created by Phillip Lisovicz on 7/26/16.
//  Copyright © 2016 Phillip Lisovicz. All rights reserved.
//

import UIKit

class StatusUpdateTableViewController: UITableViewController {
    // MARK: Properties
    
    var statusUpdates = [StatusUpdate]()
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loadSampleStatusUpdates()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    
    func loadSampleStatusUpdates() {
        let up1 = StatusUpdate(status: "Been on this line for 20 minutes", location: "Pianos")!
        let up2 = StatusUpdate(status: "No line", location: "Parker House")!
        let up3 = StatusUpdate(status: "$20 Cover", location: "Osprey")!
        
        statusUpdates += [up1, up2, up3]
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
        return statusUpdates.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "StatusUpdateTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! StatusUpdateTableViewCell
        
        let statusUpdate = statusUpdates[indexPath.row]

        // Configure the cell...
        cell.statusLabel.text = statusUpdate.status
        cell.locationLabel.text = statusUpdate.location

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindToStatusUpdateList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.sourceViewController as? ViewController, statusUpdate = sourceViewController.statusUpdate {
            // Add a new meal
            let newIndexPath = NSIndexPath(forRow: statusUpdates.count, inSection: 0)
            
            statusUpdates.append(statusUpdate)
            tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Top)
        }
    }
    
}
