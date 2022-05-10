//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Hye Sung Park on 2022/04/12.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%0.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
//    func getColor() -> UIColor {
//        return bmi?.color ?? #colorLiteral(red: 0.6090241671, green: 0.1097426936, blue: 0.1195577756, alpha:
//    }
    
    mutating func calculateBMI(height: Float, weight:Float){
        
        let bmiValue = weight / (height * weight)
        let color = [#colorLiteral(red: 0.6090241671, green: 0.1097426936, blue: 0.1195577756, alpha: 1), #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)]
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color:  color[0])
        } else if  bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a more fiddle!", color:color[1])
        } else {
                    bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: color[2])
        }
//        bmi = weight / (height * height)
    }
}
