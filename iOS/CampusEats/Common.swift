//
//  Common.swift
//  CampusEats
//
//  Created by Shawn Kim on 11/23/16.
//  Copyright © 2016 campuseats. All rights reserved.
//

import Foundation
import UIKit

// Alert Dialog
let EMAIL_VERIFICATION_MESSAGE = "Registration successful! Please check your email to verify your account."
let TEXT_FIELD_ERROR = "The Text Field Entries cannot be empty"
let TEXT_FIELD_EMPTY_TITLE = "Text Field Empty"
let LOGIN_ERROR = "Login Error"
let EMAIL_ALERT = "Thank you!"
let REGISTER_ERROR = "Register Error"
let CUSTOM_FONT = "BebasNeue"
let DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
let CELL_DATE_FORMAT = "EEEE, MMMM d, yyyy"
let CELL_TIME_FORMAT = "hh:mma"


// Extensions
extension String {
    var floatValue: Float {
        return (self as NSString).floatValue
    }
}

extension UserDefaults {
    func setString(string:String, forKey:String) {
        set(string, forKey: forKey)
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension Date {
    func getMonth() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        return dateFormatter.string(from: self)
    }
}

// Functions
func errorMessage(title: String, message: String, location: AnyObject) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
    alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
    location.present(alertController, animated: true, completion: nil)
}

extension Date {
    func isGreaterThanDate(dateToCompare: Date) -> Bool {
        //Declare Variables
        var isGreater = false
        
        //Compare Values
        if self.compare(dateToCompare as Date) == ComparisonResult.orderedDescending {
            isGreater = true
        }
        
        //Return Result
        return isGreater
    }
    
    func isSameDay(dateToCompare: Date) -> Bool {
        return Calendar.current.isDate(dateToCompare, inSameDayAs: self)
    }
    
    func isLessThanDate(dateToCompare: Date) -> Bool {
        //Declare Variables
        var isLess = false
        
        //Compare Values
        if self.compare(dateToCompare as Date) == ComparisonResult.orderedAscending {
            isLess = true
        }
        
        //Return Result
        return isLess
    }
    
    func equalToDate(dateToCompare: Date) -> Bool {
        //Declare Variables
        var isEqualTo = false
        
        //Compare Values
        if self.compare(dateToCompare as Date) == ComparisonResult.orderedSame {
            isEqualTo = true
        }
        
        //Return Result
        return isEqualTo
    }
    
    func addDays(daysToAdd: Int) -> Date {
        let secondsInDays: TimeInterval = Double(daysToAdd) * 60 * 60 * 24
        let dateWithDaysAdded: Date = self.addingTimeInterval(secondsInDays)
        
        //Return Result
        return dateWithDaysAdded
    }
    
    func addHours(hoursToAdd: Int) -> Date {
        let secondsInHours: TimeInterval = Double(hoursToAdd) * 60 * 60
        let dateWithHoursAdded: Date = self.addingTimeInterval(secondsInHours)
        
        //Return Result
        return dateWithHoursAdded
    }
}
