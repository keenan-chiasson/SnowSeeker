//
//  Favorites.swift
//  SnowSeeker
//
//  Created by Keenan Chiasson on 8/8/23.
//

import SwiftUI

class Favorites: ObservableObject {
    // favorited resorts
    private var resorts: Set<String>
    
    // our read/write key for UserDefaults
    private let saveKey = "Favorites"
    
    init() {
        // TODO: load data
        
        // otherwise, get empty array back
        resorts = []
    }
    
    // returns true if set contains resort
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }
    
    // adds the resort to set,
    // updates all views,
    // and saves changes
    func add(_ resort: Resort) {
        objectWillChange.send()
        resorts.insert(resort.id)
        save()
    }
    
    func remove(_ resort: Resort) {
        objectWillChange.send()
        resorts.remove(resort.id)
        save()
    }
    
    func save() {
        // TODO: write data
    }
}
