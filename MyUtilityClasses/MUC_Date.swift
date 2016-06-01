//
//  MUC_Date.swift
//  Pods
//
//  Created by Alvin Varghese on 6/1/16.
//
//

import Foundation
import UIKit

//MARK: Different type of displaying date formatter

enum NSDateDisplayingTypesUsingFormatter : String
{
    case Wednesday_June_02_2016_04_37_PM = "EEEE, MMMM dd, yyyy hh:mm a"
}

//MARK: Different type od time zone

enum NSDateDisplayingTypesUsingSpecificTimeZone : String
{
    case PacificTime = "PT"
}

//MARK: muc_date

class muc_date
{
    
}

//MARK: NSDate

extension NSDate
{
    //MARK: Formatted for Grid Card
    
    func formatTime(displayingType : NSDateDisplayingTypesUsingFormatter, timeZone : NSDateDisplayingTypesUsingSpecificTimeZone) -> String
    {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = displayingType.rawValue
        dateFormatter.timeZone = NSTimeZone(name: timeZone.rawValue)
        return dateFormatter.stringFromDate(self)
    }
}










