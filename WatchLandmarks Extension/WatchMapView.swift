//
//  WatchMapView.swift
//  WatchLandmarks Extension
//
//  Created by Philip Smith on 11/1/19.
//  Copyright © 2019 Philip Smith. All rights reserved.
//

import SwiftUI

struct WatchMapView: WKInterfaceObjectRepresentable {
	var landmark: Landmark
	
    func makeWKInterfaceObject(context: WKInterfaceObjectRepresentableContext<WatchMapView>) -> WKInterfaceMap {
        // Return the interface object that the view displays.
        return WKInterfaceMap()
    }
    
    func updateWKInterfaceObject(_ map: WKInterfaceMap, context: WKInterfaceObjectRepresentableContext<WatchMapView>) {
        // Update the interface object.
        let span = MKCoordinateSpan(latitudeDelta: 0.02,
                                    longitudeDelta: 0.02)
		
		let coordinate = CLLocationCoordinate2D(latitude: landmark.locationCoordinate.latitude, longitude: landmark.locationCoordinate.longitude)
        let region = MKCoordinateRegion(
            center: landmark.locationCoordinate,
            span: span)
        map.setRegion(region)
		map.addAnnotation(coordinate, with: .red)
    }
}

struct WatchMapView_Previews: PreviewProvider {
    static var previews: some View {
        WatchMapView(landmark: UserData().landmarks[0])
    }
}
