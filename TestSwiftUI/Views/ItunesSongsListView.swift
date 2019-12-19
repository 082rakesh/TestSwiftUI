//
//  ItunesSongsListView.swift
//  TestSwiftUI
//
//  Created by r.f.kumar.mishra on 18/12/19.
//  Copyright © 2019 r.f.kumar.mishra. All rights reserved.
//

import SwiftUI
import Foundation

struct ItunesSongsListView: View {
    
    @State var results = [Result]()
    
    var body: some View {
        List(results, id: \.trackId) { item in
            VStack {
                Text(item.trackName)
                    .font(.headline)
                Text(item.collectionName)
            }
            
        }.onAppear(perform: loadData)
    }

    func loadData() {
        guard let songUrl = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: songUrl)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                    DispatchQueue.main.async {
                        self.results = decodedResponse.results
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")

        }.resume()
    }
}

struct ItunesSongsListView_Previews: PreviewProvider {
    static var previews: some View {
        ItunesSongsListView()
    }
}


struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}
