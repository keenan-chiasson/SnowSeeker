//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Keenan Chiasson on 8/8/23.
//

import SwiftUI

struct ContentView: View {
    // 1a.
    @State private var searchText = ""
    
    // 2a.
    let allNames = ["Brad", "Alejandro", "Robert", "Daniel"]
    
    var body: some View {
        // 1b.
        NavigationView {
            Text("Searching for \(searchText)")
                .searchable(text: $searchText, prompt: "Look for something")
                .navigationTitle("Searching")
        }
        
        // 2b.
        NavigationView {
            List(filteredNames, id: \.self) { name in
                Text(name)
            }
            .searchable(text: $searchText, prompt: "Look for someone")
            .navigationTitle("Searching")
        }
    }
    
    // 2c.
    var filteredNames: [String] {
        if searchText.isEmpty {
            return allNames
        } else {
            return allNames.filter {
//                $0.contains(searchText)
                $0.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
