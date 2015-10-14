//
//  DetailListTableViewController.swift
//  GroceryList
//
//  Created by Craig Carlson on 10/14/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class DetailListTableViewController: UITableViewController {

    var secondDetailListArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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


    }
