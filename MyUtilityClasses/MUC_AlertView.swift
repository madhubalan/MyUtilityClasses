//
//  MUC_AlertView.swift
//  Pods
//
//  Created by Alvin Varghese on 6/1/16.
//
//

import Foundation
import UIKit

//MARK: Call Backs

typealias CancelButtonActionHandler = ((UIAlertAction) -> Void)?
typealias PresentViewControllerCompletion = (() -> Void)?
typealias DoneButtonActionForAlertViewWithTextField = ( (UITextField) -> Void)?

//MARK: MUC_AlertView

class muc_alertView
{
    
}

//MARK: Helpful Methods

extension UIAlertView
{
    //MARK: - Basic UIAlertView
    
    class func alertThis(target : UIViewController, title : String, message : String, actionTitle : String, animated : Bool, cancelButtonActionHandler : CancelButtonActionHandler, completion : PresentViewControllerCompletion)
    {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Cancel, handler : cancelButtonActionHandler))
        
        target.presentViewController(alertController, animated: animated, completion: completion)
    }
    
    //MARK: - Basic UIAlertView with text field
    
    func alertViewWithTextField(target : UIViewController, alertType : UIAlertViewStyle, cancelButtonTitle : String, doneButtonTitle : String, title : String, cancelButtonActionHandler : CancelButtonActionHandler, completion : (text : String?) -> () )
    {
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        alertController.addTextFieldWithConfigurationHandler { textField in
            
        }
        
        alertController.addAction(UIAlertAction(title: cancelButtonTitle, style: UIAlertActionStyle.Cancel, handler: cancelButtonActionHandler))
        
        alertController.addAction(UIAlertAction(title: doneButtonTitle, style: UIAlertActionStyle.Default, handler: { action in
            
            if let textFields = alertController.textFields where textFields.count > 0, let text = textFields[0].text
            {
                completion(text: text)
            }
            else
            {
                completion(text: nil)
            }
        }))
        
        target.presentViewController(alertController, animated: true, completion: nil)
    }
}








