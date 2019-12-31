//
//  ViewController.swift
//  SwissTest
//
//  Created by Silvina Roldan on 13/02/2018.
//  Copyright © 2018 Silvina Roldan. All rights reserved.
//

import SwissEphemeris
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // UTC time - Topocentric System house
        let swiss = SwissEphemeris(month: 4, day: 23, year: 1977, hour: 12, minutes: 41, seconds: 0,houseType: "T", latitude:  -31.632389, longitude: -60.699459)

        let sunPosition = swiss.sunPosition()
        let firstHousePosition = swiss.housePosition(1)
        print("First house position: " + firstHousePosition + " Sun Position: " + sunPosition)
    }

    
}

