//
//  YoutubeListView.swift
//  TestSwiftUI
//
//  Created by r.f.kumar.mishra on 18/12/19.
//  Copyright © 2019 r.f.kumar.mishra. All rights reserved.
//

import SwiftUI

struct YoutubeListView: View {
    var body: some View {
        VStack {
            Image("turtlerock").resizable().padding().aspectRatio(contentMode: .fill)
            HStack {
                CircleImage(image: Image("turtlerock"))
                    .padding(.leading, 0)
                    .padding(.trailing, 0)
                Spacer()
                VStack {
                    Text("Taylor Swift - I know you were trouble (Exclusive)")
                    Text("Taylor Fan Forever")
                }
            }.background(Color.yellow)
        }
    }
}

struct YoutubeListView_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeListView()
    }
}


struct ImageView: View {
    var body: some View {
        Image("turtlerock")
    }
    
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        Image("turtlerock")
    }
}
