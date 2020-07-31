//
//  MapVC.swift
//  Apartment Maps
//
//  Created by Steven Denny on 7/31/20.
//  Copyright © 2020 Steven Denny. All rights reserved.
//

import UIKit

class MapVC: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    var map: Map?

    override func viewDidLoad() {

        super.viewDidLoad()
        scrollView.delegate = self
        title = map!.aptName
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
        imageView.image = UIImage(named: map!.imgName)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == infoSegueConstant {
            
            let destVC = segue.destination as! InfoVC
            destVC.map = map
            
        }
        
    }
    
    @IBAction func infoButtonPressed(_ sender: Any) {
    
        performSegue(withIdentifier: infoSegueConstant, sender: map)
        
    }
    
}

extension MapVC: UIScrollViewDelegate {
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return imageView.self
        
    }
    
}
