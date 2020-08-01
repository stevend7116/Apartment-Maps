//
//  MapVC.swift
//  Apartment Maps
//
//  Created by Steven Denny on 7/31/20.
//  Copyright © 2020 Steven Denny. All rights reserved.
//

import UIKit

class MapVC: UIViewController {
    
// Outlets for the ScrollView and ImageView.
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
// The map sent from the segue. The nav bar title is set to the aptName and the ImageView is set to imgName. A segue is also set up to send to InfoVC if the info button is pressed.
    var map: Map?

    override func viewDidLoad() {

        super.viewDidLoad()
// Required ScrollView setup.
        scrollView.delegate = self
// Sets the limits of the scroll.
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
// Make there's a map there. Inside it'll be safe to unwrap.
        if map != nil {
// Set the nav bar title.
            title = map!.aptName
// Set and show the image.
            imageView.image = UIImage(named: map!.imgName)
        }

    }
    
// See comments in TableVC.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == infoSegueConstant {
            
            let destVC = segue.destination as! InfoVC
            destVC.map = map
            
        }
        
    }
    
// Just as in TableVC, an IBAction triggers the segue.
    @IBAction func infoButtonPressed(_ sender: Any) {
    
        performSegue(withIdentifier: infoSegueConstant, sender: map)
        
    }
    
}

extension MapVC: UIScrollViewDelegate {
    
// If user does the pinch move, make it work!!!
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return imageView.self
        
    }
    
}
