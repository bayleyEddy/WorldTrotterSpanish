//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by bayley on 9/23/25.
//

//import Foundation
import UIKit
import MapKit

class MapViewController: UIViewController{
    var mapView: MKMapView!
    
    override func loadView(){
        // Create a map view
        mapView = MKMapView()
        
        // Set it as *the* view of this view controller
        view = mapView
        
        // Segmented Controls
        let segmentedControl
                    = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor =  UIColor.systemBackground
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        
        // Define Constraints
        let topConstraint =
            segmentedControl.topAnchor.constraint(equalTo: view.topAnchor)
        let leadingConstraint =
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        let trailingConstraint =
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor)
     
        // Activate Contraints
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
    }


    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        print("MapViewController loaded its view.")
    }
}

