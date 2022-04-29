//
//  DataStore.swift
//  FECharacterCreator
//
//  Created by Shawn D. Hedgepeth on 9/17/20.
//  Copyright © 2020 Shawn D. Hedgepeth. All rights reserved.
//

import Foundation

class DataStore {
    static let shared = DataStore()
    
    private init() {
        myCharacter = Character.init(name: "", mClass: "", hairColor: "", gender: "")
    }
    
    var myCharacter: Character
}
