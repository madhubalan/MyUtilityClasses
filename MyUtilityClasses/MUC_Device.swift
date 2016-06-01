//
//  MUC_Device.swift
//  Pods
//
//  Created by Alvin Varghese on 6/1/16.
//
//

import Foundation
import UIKit

//MARK: UIDevice main properties

struct DeviceProperties {
    let name : String
    let systemVersion : String
    let systemName : String
    let model : String
    let localizedModel : String
    let userInterfaceIdiom : UIUserInterfaceIdiom
    let identifierForVendor : NSUUID?
}

//MARK: muc_device

class muc_device
{
}

//MARK: Extension - UIDevice

extension UIDevice
{
    //MARK: - Device Details
    
    func deviceDetails() -> DeviceProperties
    {
        return DeviceProperties(name: UIDevice.currentDevice().name, systemVersion:  UIDevice.currentDevice().systemVersion, systemName : UIDevice.currentDevice().systemName , model : UIDevice.currentDevice().model, localizedModel : UIDevice.currentDevice().localizedModel, userInterfaceIdiom : UIDevice.currentDevice().userInterfaceIdiom, identifierForVendor : UIDevice.currentDevice().identifierForVendor! )
    }
}