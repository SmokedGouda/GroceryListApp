//
//  ViewController.swift
//  GroceryList
//
//  Created by Craig Carlson on 10/14/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class GroceryListViewController: UITableViewController {

    var selectedIndex = 0
    var groceryLists = GroceryList()
    var detailedListArray = [GroceryItems]()
    override func viewDidLoad() {
        super.viewDidLoad()
        groceryLists.myGroceryLists
        detailedListArray =
                [GroceryItems(items: ["Milk", "OJ", "Bread", "Lunchmeat", "Chips"]),
                GroceryItems(items: ["Balloons", "Ice Cream", "Cake"]),
                GroceryItems(items: ["Ghetto Blaster", "Dirty Blonde", "Milkshake Stout"])]
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
          }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceryLists.myGroceryLists.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("groceryListTableIdentifier") as UITableViewCell!
        if(cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "groceryListTableIdentifier")
            }
        cell.textLabel?.text = groceryLists.myGroceryLists[indexPath.row]
        return cell
    }
    
//This function below is an optional protocol.  Use it to get the index value of a cell you touch.
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedIndex = indexPath.row
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailListVC: DetailListTableViewController = segue.destinationViewController as! DetailListTableViewController
        let indexPath = tableView.indexPathForCell(sender as! UITableViewCell)
        var arrayToPush: GroceryItems
        arrayToPush = detailedListArray[(indexPath!.row)]
        detailListVC.secondDetailListArray = arrayToPush.items
        }
}

