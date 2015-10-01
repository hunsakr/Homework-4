//
//  ViewController.swift
//  Homework4
//
//  Created by Rob Hunsaker on 9/29/15.
//  Copyright © 2015 Rob Hunsaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
  
  var people = [Person]()
 
  
  @IBOutlet weak var tableView: UITableView!
 
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    
    let odell = Person(fName: "Odell", lName: "Beckham")
    let randall = Person(fName: "Randall", lName: "Cobb")
  
    people.append(odell)
    people.append(randall)
  }
  



func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return people.count

}

func tableView(RosterTable: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
  
  let cell = tableView.dequeueReusableCellWithIdentifier("RosterTable", forIndexPath: indexPath)
  
  let person = people[indexPath.row]
  
  cell.textLabel?.text = "\(person.firstName) \(person.lastName)"
  
return cell
  }
}



