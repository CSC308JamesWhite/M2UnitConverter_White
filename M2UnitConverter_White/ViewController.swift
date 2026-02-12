//
//  ViewController.swift
//  M2UnitConverter_White
//
//  Created by James White on 2/12/26.
//

//
//  ViewController.swift
//  M2UnitConverter_White
//
//  Created by White, James B. on 2/12/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func convertAction(_ sender: Any) {
        inputField.resignFirstResponder()
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
                let toCelcius = UIAlertAction(title: "To Celcius", style: .default) { _ in
                    self.convertButton.setTitle( "To Celcius", for: .normal)
                }
                actionSheet.addAction(toCelcius)
                present(actionSheet, animated:true)
                let toFahrenheit = UIAlertAction(title: "To Fahrenheit", style: .default) { _ in
                    self.convertButton.setTitle( "To Fahrenheit", for: .normal)
                }
                actionSheet.addAction(toFahrenheit)
                present(actionSheet, animated:true)
                let toKilometers = UIAlertAction(title: "To Kilometers", style: .default) { _ in
                    self.convertButton.setTitle( "To Kilometers", for: .normal)
                }
                actionSheet.addAction(toKilometers)
                present(actionSheet, animated:true)
                let toMiles = UIAlertAction(title: "To Miles", style: .default) { _ in
                    self.convertButton.setTitle( "To Miles", for: .normal)
                }
                actionSheet.addAction(toMiles)
                present(actionSheet, animated:true)
    }
    
    
    @IBAction func submitButton(_ sender: Any) {
        let op = convertButton.title(for: .normal)
        let num = Double(inputField.text ?? "0") ?? 0
        
        switch op {
        case "To Celcius":
            let out = (num - 32) * 5/9
            outputLabel.text = String(format: "%.2f °C", out)
            print("To Celcius")
            
        case "To Fahrenheit":
            let out = (num * 9/5) + 32
            outputLabel.text = String(format: "%.2f °F", out)
            print("To Fahrenheit")
            
        case "To Kilometers":
            let out = num / 0.621371
            outputLabel.text = String(format: "%.2f km", out)
            print("To Kilometers")
            
        case "To Miles":
            let out = num * 0.621371
            outputLabel.text = String(format: "%.2f mi", out)
            print("To Miles")
            
        default:
            outputLabel.text = "Error"
            print("Invalid Operator")
        }
    }
}
