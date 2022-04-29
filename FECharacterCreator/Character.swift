//
//  Character.swift
//  FECharacterCreator
//
//  Created by Shawn D. Hedgepeth on 9/16/20.
//  Copyright © 2020 Shawn D. Hedgepeth. All rights reserved.
//

import Foundation

class Character {
    var name: String
    var mClass: String
    var hairColor: String
    var gender: String
    
    init(name: String, mClass: String, hairColor: String, gender: String ) {
        self.name = name
        self.mClass = mClass
        self.hairColor = hairColor
        self.gender = gender
    }
    
    func setName(name: String) {
        self.name = name
    }
    
    func setClass(typeClass: String) {
        self.mClass = typeClass
    }
    
    func setHairColor(hairColor: String) {
        self.hairColor = hairColor
    }
    
    func setGender(gender: String) {
        self.gender = gender
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getClass() -> String {
        return self.mClass
    }
    
    func getHairColor() -> String {
        return self.hairColor
    }
    
    func getGender() -> String {
        return self.gender
    }
}
