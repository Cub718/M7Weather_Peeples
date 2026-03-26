//
//  Weather.swift
//  M3Weather_Peeples
//
//  Created by Brayden Peeples on 3/26/26.
//

import UIKit

enum Weather {
    case sunny
    case cloudy
    case rainy
    case snowy
}

    
var image: UIImage? {
        switch self {
            case "Sunny":
                return UIImage(named: "Sunny")
                
            case "Cloudy":
                return UIImage(named: "Cloudy")
                
            case "Rainy":
                return UIImage(named: "Rainy")
                
            case "Snowy":
                return UIImage(named: "Snowy")
                
            default:
                return UIImage(named: "Unknown")
                
        }
        
    }
