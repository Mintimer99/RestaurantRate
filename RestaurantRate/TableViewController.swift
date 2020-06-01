//
//  TableViewController.swift
//  RestaurantRate
//
//  Created by Минтимер Харасов on 29.05.2020.
//  Copyright © 2020 Минтимер Харасов. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let restaurants = ["KFC", "Burger King", "McDonalds", "Burger Heroes", "FARШ", "Краснодарский парень"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = restaurants[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurants[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true

        return cell
    }

    //MARK: - Delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
