//
//  MapTableViewCell.swift
//  Apartment Maps
//
//  Created by Steven Denny on 7/30/20.
//  Copyright © 2020 Steven Denny. All rights reserved.
//

import UIKit

// This subclass is necessary since repeating content (like populating the labels within the cells) isn't allowed in a VC class.
class MapTableViewCell: UITableViewCell {

// The outlet for the prototype cell's label.
    @IBOutlet weak var labelView: UILabel!
        
    func addLabel(map: Map) {
        
        //Assigns the apartment name to the table cell assigned to the passed-in map. It's called once for each cell that needs populating with dequeueing as a consideration.
        labelView.text = map.aptName
        
    }

}
