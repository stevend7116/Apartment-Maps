//
//  ViewController.swift
//  Apartment Maps
//
//  Created by Steven Denny on 7/30/20.
//  Copyright © 2020 Steven Denny. All rights reserved.
//

import UIKit

class TableVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var maps = [Map()]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        title = appTitle
        fillMapArray()
        
    }
    
    func fillMapArray() {
        
        if aptNames.count == imgNames.count && imgNames.count == aptDescs.count {
            
            for i in 0..<aptNames.count {
                
                var map = Map()
                map.aptName = aptNames[i]
                map.imgName = imgNames[i]
                map.aptDesc = aptDescs[i]
                maps += [map]
                
            }
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == mapSegueConstant {
            
            let destVC = segue.destination as! MapVC
            destVC.map = sender as? Map
            
        }
        
    }
    
}

extension TableVC: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return maps.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let map = maps[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellConstant, for: indexPath) as! MapTableViewCell
        cell.addLabel(map: map)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: mapSegueConstant, sender: maps[indexPath.row])
        
    }
    
}

