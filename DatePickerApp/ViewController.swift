//
//  ViewController.swift
//  DatePickerApp
//
//  Created by Asif Ikbal on 4/10/17.
//  Copyright © 2017 Asif Ikbal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Text Field Outlet
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var maritalStatusTextField: UITextField!
    @IBOutlet weak var dobTextField: UITextField!
    
    
    let datePicker = UIDatePicker()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createDatePicker()
    }


    @IBOutlet weak var datePickerTextField: UITextField!

    
    func createDatePicker() {
        // format for picker
        datePicker.datePickerMode = .date
        
        // toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        // bar button item 
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        
        toolbar.setItems([doneButton], animated: true)
        
        datePickerTextField.inputAccessoryView = toolbar
        
        // accessing date picker to text field 
        datePickerTextField.inputView = datePicker
        
    }
    func donePressed() {
        
        // format date 
        let dateFormater = DateFormatter()
        dateFormater.dateStyle = .short
        dateFormater.timeStyle = .none
        datePickerTextField.text = dateFormater.string(from: datePicker.date)
        self.view.endEditing(true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationController: DetailsViewController = segue.destination as! DetailsViewController
        
        destinationController.name = userNameTextField.text!
        destinationController.phnNumber = phoneNumberTextField.text!
        destinationController.email = emailTextField.text!
        destinationController.address = addressTextField.text!
        destinationController.dob = datePickerTextField.text!
        destinationController.maritalStatus = maritalStatusTextField.text!
        
    }
}

