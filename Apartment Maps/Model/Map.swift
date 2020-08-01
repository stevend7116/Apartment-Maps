//
//  Map.swift
//  Apartment Maps
//
//  Created by Steven Denny on 7/30/20.
//  Copyright © 2020 Steven Denny. All rights reserved.
//

import Foundation

// The model class. An array of this class gets created in TableVC and is used to populate the TableViewCells with the aptNames. When the first segue is triggered (by pressing a cell), the first segue passes the map associated with that cell to MapVC. Upon the second segue being triggered this same map is passed to InfoVC.
struct Map {
    
    var aptName:String = ""
    var imgName:String = ""
    var aptDesc:String = ""
    
}
