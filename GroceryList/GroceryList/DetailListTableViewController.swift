//
//  DetailListTableViewController.swift
//  GroceryList
//
//  Created by Craig Carlson on 10/14/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class DetailListTableViewController: UITableViewController {

    var cellTextToPass = String()
    var secondDetailListArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondDetailListArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCellWithIdentifier("detailListTableIdentifier") as UITableViewCell!
            if(cell == nil) {
                cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "detailListTableIdentifier")
            }
            cell.textLabel?.text = secondDetailListArray[indexPath.row]
            return cell
    }
    
// Function below grabs the index path for the selected cell and pushes the associated cell data to the next view controller.
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segueToItemDetailsController" {
            let itemDetailVC: ItemDetailViewController = segue.destinationViewController as! ItemDetailViewController
            let cell = sender as! UITableViewCell
            let selectedRow = tableView.indexPathForCell(cell)!.row
            itemDetailVC.itemDetailLabelText = secondDetailListArray[selectedRow]
        }
    }
}
