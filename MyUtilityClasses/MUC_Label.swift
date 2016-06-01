//
//  MUC_Label.swift
//  Pods
//
//  Created by Alvin Varghese on 6/1/16.
//
//

import Foundation
import UIKit

//MARK: muc_label

class muc_label
{
    
}

//MARK: UILabel

extension UILabel
{
    //MARK: - Under lining a UILabel
    
    func underLineThisLabel(text : String)
    {
        let attributeString : NSMutableAttributedString = NSMutableAttributedString(string: text)
        attributeString.addAttribute(NSUnderlineStyleAttributeName, value: NSUnderlineStyle.StyleSingle.rawValue, range: NSMakeRange(0, attributeString.length))
        
        self.attributedText = attributeString
    }
}