//
//  TableViewController.swift
//  RestaurantRate
//
//  Created by Минтимер Харасов on 29.05.2020.
//  Copyright © 2020 Минтимер Харасов. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let places = Place.getPlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}

        cell.nameLabel?.text = places[indexPath.row].name
        cell.imageOfPlaces?.image = UIImage(named: places[indexPath.row].image)
        cell.typeLabel.text = places[indexPath.row].type
        cell.locationLabel.text = places[indexPath.row].location
        cell.imageOfPlaces?.layer.cornerRadius = cell.imageOfPlaces.frame.size.height / 2
        cell.imageOfPlaces?.clipsToBounds = true

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
