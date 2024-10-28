//
//  Bundle+Extenstions.swift
//  sdk
//
//  Created by Sergey Iskhakov on 16.09.2020.
//  Copyright © 2020 Cloudpayments. All rights reserved.
//
import Foundation
import UIKit

extension Bundle {
    
    class var mainSdk: Bundle {
        
        if let sdkBundle = Bundle(identifier: "org.cocoapods.Cloudpayments"),
           let bundleUrl = sdkBundle.url(forResource: "CloudpaymentsSDK", withExtension: "bundle"),
           let resourceBundle = Bundle(url: bundleUrl) {
            return resourceBundle
        }
        
        let bundle = Bundle(for: PaymentForm.self)
        if let bundleUrl = bundle.url(forResource: "CloudpaymentsSDK", withExtension: "bundle"),
           let resourceBundle = Bundle(url: bundleUrl) {
            return resourceBundle
        }
        
        if let bundleUrl = Bundle.main.url(forResource: "CloudpaymentsSDK", withExtension: "bundle"),
           let resourceBundle = Bundle(url: bundleUrl) {
            return resourceBundle
        }
        
        print("CloudpaymentsSDK.bundle not found")
        return Bundle.main
    }
    
    class var cocoapods: Bundle? {
        return Bundle(identifier: "org.cocoapods.Cloudpayments")
    }
}
