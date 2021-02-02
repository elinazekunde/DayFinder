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
        let calendar = Calendar.current
        let formatter = DateFormatter()
        
        var day = ""
        var month = ""
        var year = ""
        
        guard let dayValue = dayTextField.text else { return }
        day = dayValue

        guard let monthValue = monthTextField.text else { return }
        month = monthValue

        guard let yearValue = yearTextField.text else { return }
        year = yearValue
        
//        if let value = dayTextField.text {
//            day = value
//        } else {
//            return
//        }
//
//        if let value = monthTextField.text {
//            month = value
//        } else {
//            return
//        }
//
//        if let value = yearTextField.text {
//            year = value
//        } else {
//            return
//        }
        
        let dateString = "\(day).\(month).\(year)"
        
        formatter.dateFormat = "dd.MM.yyyy"
        
        let date = formatter.date(from: dateString)
        
        let result = calendar.dateComponents([.weekday], from: date!).weekday
        
        var dayOfTheWeek = ""
        
        switch result {
        case 1:
            dayOfTheWeek = "Sunday"
        case 2:
            dayOfTheWeek = "Monday"
        case 3:
            dayOfTheWeek = "Tuesday"
        case 4:
            dayOfTheWeek = "Wednesday"
        case 5:
            dayOfTheWeek = "Thursday"
        case 6:
            dayOfTheWeek = "Friday"
        case 7:
            dayOfTheWeek = "Saturday"
        default:
            dayOfTheWeek = "unknown"
        }
        
        resultLabel.text = dayOfTheWeek
    }
    
}

