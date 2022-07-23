//
//  MapViewController.swift
//  Conversion
//
//  Created by 미미밍 on 2021/11/22.
//

import UIKit
import MapKit

var locationManager:CLLocationManager!
var currentLocation:CLLocationCoordinate2D!

class MapViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let mark = Marker(title: "주 미국 한국대사관", subtitle: "", coordinate: CLLocationCoordinate2D(latitude:38.91464930459705 , longitude: -77.05437186560773))
        myMap.addAnnotation(mark)
        zoomLevel(location: locationLatLong)
    }
    
    let locationLatLong = CLLocation(latitude:38.91464930459705, longitude: -77.05437186560773)
    let distanceSpan: CLLocationDistance = 50000
    
    func zoomLevel(location: CLLocation){
        let mapCoordinates = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distanceSpan, longitudinalMeters: distanceSpan)
        myMap.setRegion(mapCoordinates, animated:true)
    }
    
    class Marker:NSObject, MKAnnotation{
        let title:String?
        let coordinate: CLLocationCoordinate2D
        let subtitle: String?
        
        init(title:String?, subtitle:String?, coordinate:CLLocationCoordinate2D){
            self.title = title
            self.subtitle = subtitle
            self.coordinate = coordinate
            
            super.init()
        }
    }

}
