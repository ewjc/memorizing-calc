//
//  EquationTableViewController.swift
//  Memorizing calculator
//
//  Created by Eric Wong on 11/17/16.
//  Copyright © 2016 Make-Stars. All rights reserved.
//

import UIKit

class EquationTableViewController: UITableViewController {
    
    var VC: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
//        return VC.equationArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "equationCell") as! EquationTableViewCell
        
        var equation = VC.equationArray[indexPath.row]

        return cell
    }


}
