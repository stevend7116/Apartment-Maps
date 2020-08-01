//
//  ViewController.swift
//  Apartment Maps
//
//  Created by Steven Denny on 7/30/20.
//  Copyright © 2020 Steven Denny. All rights reserved.
//

import UIKit

class TableVC: UIViewController {

// The table view outlet.
    @IBOutlet weak var tableView: UITableView!
    
// For creating the main model element of the app.
    var maps = [Map()]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
// These 2 lines are required for UITableViews.
        tableView.dataSource = self
        tableView.delegate = self
// Places the app title in the Navigation contoller.
        title = appTitle
// Creates the model.
        fillMapArray()
        
    }
    
    func fillMapArray() {
        
// Check to ensure the 3 arrays in Constants.swift contain the same amount of elements.
        if aptNames.count == imgNames.count && imgNames.count == aptDescs.count {
            
// Loop through all the elements.
            for i in 0..<aptNames.count {
                
// Create a map object and fill it with appropriate info from the arrays in Constants.swift.
                var map = Map()
                map.aptName = aptNames[i]
                map.imgName = imgNames[i]
                map.aptDesc = aptDescs[i]
// Add it to the array in preparation for populating the TableViewCells.
                maps += [map]
                
            }
            
        }
        
    }
    
// The required prepare func needed for a segue to work.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
// A check to make sure we're working with the proper segue. The second value is in Constants.swift.
        if segue.identifier == mapSegueConstant {
            
// Creating a MapVC object.
            let destVC = segue.destination as! MapVC
// Setting it's variable "map" as the target for the "sender" and setting the Map object as an optional.
            destVC.map = sender as? Map
            
        }
        
    }
    
}

// Required protocols for UITableViews.
extension TableVC: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
// How many rows will the app need?
        return maps.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
// Create a Map object and set it to the current indexPath.
        let map = maps[indexPath.row]
// The required dequeueing. This also recasts into the custom class since the label outlet can't appear in this file.
        let cell = tableView.dequeueReusableCell(withIdentifier: cellConstant, for: indexPath) as! MapTableViewCell
// Calls the function from the custom class to name each cell.
        cell.addLabel(map: map)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
// When a cell is selected send the map associated with it to MapVC.
        performSegue(withIdentifier: mapSegueConstant, sender: maps[indexPath.row])
        
    }
    
}

