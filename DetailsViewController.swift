//
//  DetailsViewController.swift
//  DatePickerApp
//
//  Created by Asif Ikbal on 4/10/17.
//  Copyright © 2017 Asif Ikbal. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    //MARK: Outlet
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var maritalStatusLabel: UILabel!
    
    var name = String()
    var phnNumber = String()
    var address = String()
    var email = String()
    var dob = String()
    var maritalStatus = String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = name
        phoneNumberLabel.text = phnNumber
        emailLabel.text = email
        addressLabel.text = address
        dobLabel.text = dob
        maritalStatusLabel.text = maritalStatus
        
    }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
