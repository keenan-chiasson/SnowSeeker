//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Keenan Chiasson on 8/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedUser: User? = nil
    @State private var isShowingUser = false
    
    var body: some View {
        Text("Hello, World!")
            .onTapGesture {
                selectedUser = User()
            }
        // by passing optional, we bind to its nil state
        // and safely receive unwrapped value w/o nil coalescing
            .sheet(item: $selectedUser) { user in
                Text(user.id)
            }
        
        Text("Hello, World!")
            .onTapGesture {
                selectedUser = User()
                isShowingUser.toggle()
            }
        // can even pass the optional to an alert
        // as long as we track boolean state
            .alert("Welcome", isPresented: $isShowingUser, presenting: selectedUser) { user in
                Button(user.id) { }
            }
        
        
        Text("Hello, World!")
            .onTapGesture {
                selectedUser = User()
                isShowingUser.toggle()
            }
        // sidebar: can even leave out the OK button,
        // and SwiftUI will take care of a basic one for us
            .alert("Welcome", isPresented: $isShowingUser) { }
    }
}

struct User: Identifiable {
    var id = "Taylor Swift"
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
