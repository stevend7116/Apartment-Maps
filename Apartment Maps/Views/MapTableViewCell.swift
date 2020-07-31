//
//  MapTableViewCell.swift
//  Apartment Maps
//
//  Created by Steven Denny on 7/30/20.
//  Copyright © 2020 Steven Denny. All rights reserved.
//

import UIKit

class MapTableViewCell: UITableViewCell {

    @IBOutlet weak var labelView: UILabel!
    
    func addLabel(map: Map) {
        
        labelView.text = map.aptName
        
    }

}
