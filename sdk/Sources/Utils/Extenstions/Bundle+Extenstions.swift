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
    class var mainSdk: Bundle? {
        let bundle = Bundle(for: PaymentForm.self)
        if let resourceBundleURL = bundle.resourceURL?
            .appendingPathComponent("CloudPayments_CloudPayments.bundle"),
           let resourceBundle = Bundle(url: resourceBundleURL) {
            return resourceBundle
        } else if let resourceBundleURL = bundle.resourceURL?
            .appendingPathComponent("CloudPayments.bundle"),
           let resourceBundle = Bundle(url: resourceBundleURL) {
            return resourceBundle
        }
        return Bundle.main
    }
}


