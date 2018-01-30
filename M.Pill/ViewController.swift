//
//  ViewController.swift
//  M.Pill
//
//  Created by Myriam BELISAIRE on 29/01/2018.
//  Copyright © 2018 Myriam BELISAIRE. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTxtField: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCodeTxtField: UITextField!
    
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var emoji: UIImageView!
    @IBOutlet var labels: [UILabel]!
    @IBOutlet var txtFields: [UITextField]!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var successImg: UIImageView!
    
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        countryLabel.isHidden = true
        countryTxtField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTxtField.isHidden = true
        statePicker.isHidden = false
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTxtField.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeTxtField.isHidden = false
    }
    
    @IBAction func buyBtnPressed(_ sender: Any) {
        emoji.isHidden = true
        divider.isHidden = true
        statePicker.isHidden = true
        for label in labels {
            label.isHidden = true
        }
        for txtField in txtFields {
            txtField.isHidden = true
        }
        for button in buttons {
            button.isHidden = true
        }
        successImg.isHidden = false
    }
    
}

