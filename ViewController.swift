//
//  ViewController.swift
//  datePicker
//
//  Created by Shyamal on 19/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthDateTxt: UITextField!
    let datePicker = UIDatePicker()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createdatePicker()
    }
   
    @objc func donePressed(){
        //formatter
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        birthDateTxt.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    func createdatePicker() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        //bar button
        let doneBtn = UIBarButtonItem(barButtonSystemItem:.done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        birthDateTxt.inputAccessoryView = toolbar
        birthDateTxt.inputView = datePicker
        datePicker.datePickerMode = .date
        
    }
}

