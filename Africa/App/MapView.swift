//
//  MapView.swift
//  Africa
//
//  Created by Anuj Soni on 05/04/22.
//

import SwiftUI
import MapKit

struct MapView: View {

@State private var region:MKCoordinateRegion = {
var mapcordinates = CLLocationCoordinate2D(latitude:6.600286, longitude:16.4377599)
var zoomlevel = MKCoordinateSpan(latitudeDelta:70.0, longitudeDelta: 70.0)
var mapregion = MKCoordinateRegion(center:mapcordinates,span:zoomlevel)
return mapregion
}()

let locations:[NationalParkLocation] = Bundle.main.decode("locations.json")
    
    
var body: some View {
    
Map(coordinateRegion:$region,annotationItems:locations,annotationContent:{item in
    
    //MapPin-Old Style Pin (Always Static)
    //MapPin(coordinate:item.location, tint:.accentColor)
    
    //MapMarker-New Style Marker (Always Static)
    //MapMarker(coordinate:item.location, tint:.accentColor)
    
    //Custom Annotations
    MapAnnotation(coordinate:item.location)
    {
    Image("logo")
    .resizable()
    .scaledToFit()
    .frame(width:32, height: 32, alignment:.center)
    }
    })
}

}

struct MapView_Previews: PreviewProvider {
    
static var previews: some View {
        MapView()
}
}
