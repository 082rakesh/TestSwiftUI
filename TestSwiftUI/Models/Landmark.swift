//
//  Landmark.swift
//  TestSwiftUI
//
//  Created by r.f.kumar.mishra on 18/12/19.
//  Copyright © 2019 r.f.kumar.mishra. All rights reserved.
//

import Foundation
import CoreLocation
import SwiftUI

struct Landmark: Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var category: String
    var city: String
    var state: String
    var park: String
    var coordinates: Coordinates

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
    
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Codable {
    var longitude: Double
    var latitude: Double
}
