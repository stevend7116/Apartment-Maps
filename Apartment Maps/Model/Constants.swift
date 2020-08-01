//
//  Constants.swift
//  Apartment Maps
//
//  Created by Steven Denny on 7/30/20.
//  Copyright © 2020 Steven Denny. All rights reserved.
//

import Foundation

/*
    The first three variables list apartment names, image names (without ".jpg"), and descriptions that are the heart of the model. The first apartment name should correspond to the first image name and description and so forth down the line. While a check is done in code to ensure the count of these 3 arrays are equal, this check can only be done humanly here.
 */
let aptNames = ["Civic Center Apartments",
                "Hamilton Apartments",
                "Savannah Creek Apartments"]

let imgNames = ["Civic",
                "Hamilton",
                "Savannah"]

let aptDescs = ["Gate code: #4999. These apartments were completed in two phases. Phase I has the address 4740 Hwy 51 N. and contains building 1-28. It can only be accessed by guests from Hwy 51 using the northeast entrance. The southeast entrance is for residents only. Beware of navigation apps that try and send you to a locked entrance off of W.E. Ross Pkwy. The address for Phase II is 4744 W.E. Ross Pkwy and contains buildings 29-59. Buildings 41-46 and 56 can only be accessed through the south gate. All other buildings can only be accessed by guests through the east gate. The north gate is for residents only. Most buildings will have 8 apartments each although a few only have 4. Standard numbering is 101-104 for first floor units and 201-204 for second floor units on the left side of the building. The right side has 105-108 and 205-208 respectively.",
                
                "Gate code: 4999 <Enter>. Address: 4375 Hwy 51 N. The Hamilton at Turman Farms has two entrances. The one off of Hwy 51 is good for accessing the first few buildings. You'll want to use the Turman Drive entrance most of the time. The touchpad takes a bit of getting used to. It will turn a terra-cotta color when it accepts your press. Make sure you see this before entering the next number or pressing 'Enter'. Most building will have 8 apartments each although a few only have four. Standard numbering is 101-104 for first floor units, 201-204 for second floor units and on buildings that have a third floor, 301-304 on the left side of the building. The right side has 105-108,  205-208, and sometimes 305-308 respectively.",
                
                "The trick to these apartments is knowing which side to go to and for those that are curious how high you have to go. All buildings are three story. The side is listed on the map for the six apartments that face that side. Of those the bottom two numbers are on the first floor. The middle two are second floor. The last two mean you're in for a climb. ;)"]

// Constants to avoid typing strings into the app. This ensures that the UI can catch typos. Of course there might be typos here...
let appTitle = "Apartment Maps"
// Reuse ID for UITableViewCell.
let cellConstant = "Cell"
// ID for segue from TableVC to MapVC.
let mapSegueConstant = "mapSegue"
// ID for segue from MapVC to InfoVC.
let infoSegueConstant = "infoSegue"
