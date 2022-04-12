//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Hye Sung Park on 2022/04/12.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculateBrain {
    
    var bmi: Float = 0.0
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%0.1f", bmi)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight:Float){
        bmi = weight / (height * height)
    }
}
