//
//  ViewController.swift
//  MyBMI
//
//  Created by Lucas Fechner on 27.06.24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var kgWeight: UITextField!
    
    @IBOutlet weak var cmGroesse: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    @IBAction func convert(_ sender: Any) {
        var weight = 0.0
        var height = 0.0
        if let h = Double(cmGroesse.text!){
            height = h
        }
        if let w = Double(kgWeight.text!){
            weight = w
        }
        
        let bmiCalc = (10000*weight) / ( height*height)
        let formatted = String(format: "BMI: %.2f", bmiCalc)


        resultLabel.text = String(bmiCalc)

    }
    
    
    
    @IBAction func refreshButton(_ sender: UIBarButtonItem) {
        kgWeight.text = ""
        cmGroesse.text = ""
        resultLabel.text = "BMI:"
        view.endEditing(true)

            }
    
    }
    

    
    

