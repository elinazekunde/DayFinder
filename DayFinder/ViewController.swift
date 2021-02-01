//
//  ViewController.swift
//  DayFinder
//
//  Created by Elīna Zekunde on 01/02/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var findButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewController first launch")
    }

    @IBAction func findWeekdayTapped(_ sender: Any) {
        //calendar
        //DateComponents()
        // dateComponents.day = dayTextField.text
        //calendar.date(from: dateComponents)
        //DateFormatter()
        //resultLabel.text = result
    }
    
}

