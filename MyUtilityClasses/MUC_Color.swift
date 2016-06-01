
import Foundation
import UIKit

//MARK: UIColor

extension UIColor
{
    private convenience init(red: Int, green: Int, blue: Int) {
        
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(hexadecimal : String) {
        
        let color = hexadecimal.stringByReplacingOccurrencesOfString("#", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)
        
        var rgbValue : UInt32 = 0
        NSScanner(string: color).scanHexInt(&rgbValue)
        let rgbValue1 = Int(rgbValue)
        
        self.init(red:(rgbValue1 >> 16) & 0xff, green:(rgbValue1 >> 8) & 0xff, blue:rgbValue1 & 0xff)
    }
    
    convenience init(hexadecimal : String, flag : Bool) {
        
        let kTempValue = 0.0
        
        let color = hexadecimal.stringByReplacingOccurrencesOfString("#", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)
        
        var rgbValue : UInt32 = 0
        NSScanner(string: color).scanHexInt(&rgbValue)
        let rgbValue1 = Int(rgbValue)
        
        if flag { // +
            
            self.init(red: ((rgbValue1 >> 16) & 0xff) + Int(kTempValue), green:((rgbValue1 >> 8) & 0xff) + Int(kTempValue), blue:(rgbValue1 & 0xff) + Int(kTempValue))
        }
        else
        {
            self.init(red:(rgbValue1 >> 16) & 0xff, green:(rgbValue1 >> 8) & 0xff, blue:rgbValue1 & 0xff)
        }
    }
}
