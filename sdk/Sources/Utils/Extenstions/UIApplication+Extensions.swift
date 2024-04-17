//
//  UIApplication+Extensions.swift
//  sdk
//
//  Created by Cloudpaymentson 14.09.2023.
//  Copyright © 2023 Cloudpayments. All rights reserved.
//

import UIKit
import Foundation

extension UIApplication {
    class func topViewController(controller: UIViewController? = UIApplication.shared.windows.first?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }
}
