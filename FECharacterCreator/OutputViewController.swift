//
//  OutputViewController.swift
//  FECharacterCreator
//
//  Created by Shawn D. Hedgepeth on 9/22/20.
//  Copyright © 2020 Shawn D. Hedgepeth. All rights reserved.
//

import Foundation
import UIKit


class OutputViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var classLabel: UILabel!
    @IBOutlet var hairColorLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameLabel.text = DataStore.shared.myCharacter.getName()
        classLabel.text = DataStore.shared.myCharacter.getClass()
        hairColorLabel.text = DataStore.shared.myCharacter.getHairColor()
        genderLabel.text = DataStore.shared.myCharacter.getGender()
    }
}
