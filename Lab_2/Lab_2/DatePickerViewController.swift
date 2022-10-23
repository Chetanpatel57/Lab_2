//
//  ViewController.swift
//  Lab_2
//
//  Created by Chetan Patel on 2022-10-22.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var DatePickerControl: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("DatePickerViewController")
        let date = NSDate()
        DatePickerControl.setDate(date as Date, animated: false)
        // Do any additional setup after loading the view.
    }

    @IBAction func SelctButton_Pressed(_ sender: UIButton) {
        let date = DatePickerControl.date
                let message = "The date and time you selected is \(date)"
                let alert = UIAlertController(
                    title: "Date and Time Selected",
                    message: message,
                    preferredStyle: .alert)
                let action = UIAlertAction(
                    title: "That's so true!",
                    style: .default,
                    handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
    }
    
}

