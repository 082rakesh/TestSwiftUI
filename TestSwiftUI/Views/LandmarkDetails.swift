//
//  LandmarkDetails.swift
//  TestSwiftUI
//
//  Created by r.f.kumar.mishra on 18/12/19.
//  Copyright © 2019 r.f.kumar.mishra. All rights reserved.
//

import SwiftUI

struct LandmarkDetails: View {
    var landmark: Landmark

    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top).frame(height: 300)
            CircleImage(image: Image("turtlerock")).offset(x: 0, y: -100)
            Text("Turtle Rock")
                .font(.largeTitle)

            HStack {
                Text("turtlerock").autocapitalization(.words)
                Spacer()
                Text("west land").autocapitalization(.words)

            }
        }
    .padding()
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails(landmark: landmarkData[0])
    }
}
