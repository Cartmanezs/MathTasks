//
//  ExtensionForButton.swift
//  TestUrMind
//
//  Created by Ingvar on 4/30/19.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit
extension UIView {
    func bindToKeyboard() {
        NotificationCenter.default.addObserver(self, selector:              #selector(KeyboardWillChange(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func KeyboardWillChange(_ notification: NSNotification) {
        let duration = notification.userInfo![UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        let  curve = notification.userInfo![UIResponder.keyboardAnimationCurveUserInfoKey] as! UInt
        let startingFrame = (notification.userInfo![UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        let endingFrame = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let deltaY = endingFrame.origin.y - startingFrame.origin.y
        
        UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: UIView.KeyframeAnimationOptions.init(rawValue: curve), animations: {
            self.frame.origin.y += deltaY
        }, completion: nil)
    }
}

