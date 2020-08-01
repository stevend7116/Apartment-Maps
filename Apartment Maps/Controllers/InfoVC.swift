//
//  InfoVC.swift
//  Apartment Maps
//
//  Created by Steven Denny on 7/31/20.
//  Copyright © 2020 Steven Denny. All rights reserved.
//

import UIKit

class InfoVC: UIViewController {
    
// Outlet for the Label.
    @IBOutlet weak var labelView: UILabel!
    
// The map passed in from the segue from MapVC.
    var map:Map?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
// Keeps the title as the apartment name. BTW this has the side-effect of making sure there's a "<back" in the left side of the nav bar.
        title = map!.aptName
// Show the long-ass text. Need to format?
        labelView.text = map!.aptDesc
        
    }
    
}
