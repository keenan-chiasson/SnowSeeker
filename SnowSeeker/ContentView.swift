//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Keenan Chiasson on 8/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        NavigationView {
//            VStack {
//                Image(systemName: "globe")
//                    .imageScale(.large)
//                    .foregroundColor(.accentColor)
//                Text("Hello, world!")
//            }
//            .padding()
//            .navigationTitle("Primary")
//
//            Text("Secondary")
//        }
        
        NavigationView {
            NavigationLink {
                Text("New secondary")
            } label: {
                Text("Hello, world!")
            }
            .navigationTitle("Primary")
            
            Text("Secondary")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
