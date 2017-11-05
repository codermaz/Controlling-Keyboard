//
//  ViewController.swift
//  Controlling Keyboard
//
//  Created by MacMini on 05.11.17.
//  Copyright © 2017 MacMini. All rights reserved.
//
/*
 
    A>> Main.storyboard
    1. TextField auf den Stroryboard
    2.1. Ctrl + mouse Links >> "Gelb-view controller"
    2.2. Delegate auswählen
 
    B>> ViewController.swift
    1.1. override func touchesBegan
    1.2. self.view.endEditing(true)
    2.1. als erwerbClasse "UITextFieldDelegate" hinzufügen
    2.2. func textFieldShouldReturn
            textField.resignFirstResponder()
            true
*/


import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // keyboard wegschicken when ausser TextField drücken
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // keyboard wegschicken when Return pressed
        textField.resignFirstResponder()
        return true
    }

}

