//
//  ViewController.swift
//  TestUrMind
//
//  Created by Ingvar on 4/29/19.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UILabel!
    @IBOutlet weak var secondNumber: UILabel!
    @IBOutlet weak var mathSign: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var textButton: UIButton!
    

    
    
    @IBAction func pressedNextBtn(_ sender: Any)
    {
       
        
        while true
        {
            guard
                let numberOne = self.numbers.randomElement(),
                let numberTwo = self.numbers.randomElement(),
                let signRandom = self.signsMath.randomElement()
                else{
                    return
            }
            
            if (numberOne % numberTwo == 0){
                self.firstNumber.text = "\(String(describing: numberOne))"
                self.secondNumber.text = "\(String(describing: numberTwo))"
                self.mathSign.text = signRandom
                
                var result: Int = 0
                
                switch signRandom {
                    case "+" :
                        result = Int(numberOne) + Int(numberTwo)
                    
                    
                    case "-" :
                        result = Int(numberOne) - Int(numberTwo)
                    
                    case "*":
                        result = Int(numberOne) * Int(numberTwo)
                    
                    case "/":
                        result = Int(numberOne) / Int(numberTwo)
                    
                    default:
                        break
                }
                break
            }
        }
        
        
        
    }
   
    
    let signsMath =
    [
        "+", "-", "*", "/"
    ]
    
    let numbers = Array(1...1000)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textButton.bindToKeyboard()
     

      //  answerTextField.smartInsertDeleteType = UITextSmartInsertDeleteType.no
      //  answerTextField.delegate = self as? UITextFieldDelegate
        // Do any additional setup after loading the view.
    }


    
}



