//
//  ViewController.swift
//  M3Weather_Peeples
//
//  Created by Brayden Peeples on 2/5/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var weatherText: UILabel!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var tempWarning: UILabel!
    
    
    override func viewDidLoad() {
        
        func getWeatherImage(matching weather:String) -> UIImage? {
            switch weather {
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
        
        func getWeatherDescription(matching temperature: Double) -> String? {
            switch temperature {
            case ..<20:
                return "Extreme cold!"
            case 20..<50:
                return "It's cold outside!"
            case 50..<69:
                return "Cool and mild!"
            case 69..<86:
                return "Warm!"
            case 86...:
                return "Heat alert!"
            default:
                return "Temperature unknown"
                
            }
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Choose an element using nil-coalescing
        let weather = ["Sunny", "Cloudy", "Rainy", "Snowy"].randomElement() ?? "Unknown"
        let temperature = 19.5
        
        weatherIcon.image = getWeatherImage(matching: weather)
        weatherText.text = weather
        tempWarning.text = getWeatherDescription(matching: temperature)
        self.temperature.text = "\(temperature)°F"
        
        
        
    }


}

