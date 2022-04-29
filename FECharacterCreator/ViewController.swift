//
//  ViewController.swift
//  FECharacterCreator
//
//  Created by Shawn D. Hedgepeth on 9/14/20.
//  Copyright © 2020 Shawn D. Hedgepeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var classLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var StrLabel: UILabel!
    @IBOutlet var DefLabel: UILabel!
    @IBOutlet var MagLabel: UILabel!
    @IBOutlet var ResLabel: UILabel!
    @IBOutlet var SpdLabel: UILabel!
    @IBOutlet var LuckLabel: UILabel!
    @IBOutlet var MvtLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    
    
    let classes: [String] = [
        "Soldier",
        "Mage",
        "Thief",
        "Myrmidon",
        "Fighter"
    ]
    
    let descriptions: [String] =
        ["Wields lances. Soldiers use their high Str and Def to defeat their enemies. With their low Res, you want to keep them away from Mages. Soldiers are average in all other stats.",
        "Wields tomes. Mages have high Magic and Resistance, but have low Defense. You will want to utilize a Mage's ranged capabilities to keep them off the front lines.",
        "Wields swords. Thieves use their high luck to dodge their enemies' attacks, while using their high speed to land multiple hits. Thieves also have high movement.",
        "Wields swords. Myrmidons lack the defense that soldiers have, but they make up for it with their high speed which allows them to attack their enemies multiple times.",
        "Wields axes. Fighters like to utilize their brute strength in battle. They can deal high damage to any unit at close range. Their low Res and Spd make them easy targets for Mages!"
    ]
    
    var classIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        classLabel.text = classes[classIndex]
        descriptionLabel.text = descriptions[classIndex]
        if let text = classLabel.text {
            setStatColors(typeClass: text)
        }
    }
    
    @IBAction func showNextClass(_ sender: UIButton) {
        classIndex += 1
        if classIndex == classes.count {
            classIndex = 0
        }
        classLabel.text = classes[classIndex]
        descriptionLabel.text = descriptions[classIndex]
        setStatColors(typeClass: classes[classIndex])
    }
    
    
    @IBAction func confirmCharacterClass(_ sender: UIButton) {
        if let text = classLabel.text {
            DataStore.shared.myCharacter.setClass(typeClass: text)
        }
        // print(DataStore.shared.myCharacter.getClass())
    }
    
    @IBAction func maleButton(_ sender: UIButton) {
        DataStore.shared.myCharacter.setGender(gender: "Male")
        // print(DataStore.shared.myCharacter.getGender())
    }
    
    @IBAction func femaleButton(_ sender: UIButton) {
        DataStore.shared.myCharacter.setGender(gender: "Female")
    }
    
    @IBAction func brownHairButton(_ sender: UIButton) {
        DataStore.shared.myCharacter.setHairColor(hairColor: "Brown")
        // print(DataStore.shared.myCharacter.getHairColor())
    }
    
    @IBAction func blackHairButton(_ sender: UIButton) {
        DataStore.shared.myCharacter.setHairColor(hairColor: "Black")
    }
    
    @IBAction func blondeHairButton(_ sender: UIButton) {
        DataStore.shared.myCharacter.setHairColor(hairColor: "Blonde")
    }
    
    @IBAction func redHairButton(_ sender: UIButton) {
        DataStore.shared.myCharacter.setHairColor(hairColor: "Red")
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        nameTextField.resignFirstResponder()
        if let text = nameTextField.text {
            DataStore.shared.myCharacter.setName(name: text)
        }
        // print(DataStore.shared.myCharacter.getName())
    }
    
    func setStatColors(typeClass: String) {
        if classLabel.text == "Soldier"{
            setSoldierStatColors()
        }
        else if classLabel.text == "Mage" {
            setMageStatColors()
        }
        else if classLabel.text == "Myrmidon" {
            setMyrmidonStatColors()
        }
        else if classLabel.text == "Thief" {
            setThiefStatColors()
        }
        else{
            setFighterStatColors()
        }
    }
    
    func setSoldierStatColors() {
        StrLabel.textColor = UIColor.green
        DefLabel.textColor = UIColor.green
        MagLabel.textColor = UIColor.red
        ResLabel.textColor = UIColor.red
        SpdLabel.textColor = UIColor.black
        LuckLabel.textColor = UIColor.black
        MvtLabel.textColor = UIColor.black
    }
    
    func setMageStatColors() {
        StrLabel.textColor = UIColor.red
        DefLabel.textColor = UIColor.red
        MagLabel.textColor = UIColor.green
        ResLabel.textColor = UIColor.green
        SpdLabel.textColor = UIColor.black
        LuckLabel.textColor = UIColor.black
        MvtLabel.textColor = UIColor.black
    }
    
    func setMyrmidonStatColors() {
        StrLabel.textColor = UIColor.black
        DefLabel.textColor = UIColor.red
        MagLabel.textColor = UIColor.red
        ResLabel.textColor = UIColor.black
        SpdLabel.textColor = UIColor.green
        LuckLabel.textColor = UIColor.green
        MvtLabel.textColor = UIColor.black
    }
    
    func setThiefStatColors() {
        StrLabel.textColor = UIColor.black
        DefLabel.textColor = UIColor.red
        MagLabel.textColor = UIColor.red
        ResLabel.textColor = UIColor.black
        SpdLabel.textColor = UIColor.green
        LuckLabel.textColor = UIColor.green
        MvtLabel.textColor = UIColor.green
    }
    
    func setFighterStatColors() {
        StrLabel.textColor = UIColor.green
        DefLabel.textColor = UIColor.green
        MagLabel.textColor = UIColor.red
        ResLabel.textColor = UIColor.red
        SpdLabel.textColor = UIColor.red
        LuckLabel.textColor = UIColor.black
        MvtLabel.textColor = UIColor.black
    }
}

