//
//  CircleImage.swift
//  TestSwiftUI
//
//  Created by r.f.kumar.mishra on 18/12/19.
//  Copyright © 2019 r.f.kumar.mishra. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle()
                .strokeBorder(Color.white, lineWidth: 4)
                .shadow(radius: 10)
        )
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock") )
    }
}
