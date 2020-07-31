//
//  InfoVC.swift
//  Apartment Maps
//
//  Created by Steven Denny on 7/31/20.
//  Copyright © 2020 Steven Denny. All rights reserved.
//

import UIKit

class InfoVC: UIViewController {
    
    @IBOutlet weak var labelView: UILabel!
    
    var map:Map?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        title = map!.aptName
        labelView.text = map!.aptDesc
        
    }
    
}
