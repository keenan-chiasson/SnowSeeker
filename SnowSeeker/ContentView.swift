//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Keenan Chiasson on 8/8/23.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        // this group contains no layout information,
        // its parent will choose how the text views get arranged
        Group {
            Text("Name: Keenan")
            Text("Country: America")
            Text("Kids: Ruth and Maggie")
        }
        .font(.title)
    }
}

struct ContentView: View {
    // 1a.
    @State private var layoutVertically = false
    
    // 2a.
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
       // 1b.
        Group {
            if layoutVertically {
                VStack {
                    UserView()
                }
            } else {
                HStack {
                    UserView()
                }
            }
        }
        .onTapGesture {
            layoutVertically.toggle()
        }
        
        // 2b.
        if sizeClass == .compact {
            VStack {
                UserView()
            }
        } else {
            HStack {
                UserView()
            }
        }
        
        // 2c.
        // Note: in situations where you only have one view
        // and it doesn't take any parameters, you can
        // pass its initializer directly to the containing stack
        // this works exactly the same as above, but w/ cleaner code
        if sizeClass == .compact {
            VStack(content: UserView.init)
        } else {
            HStack(content: UserView.init)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
