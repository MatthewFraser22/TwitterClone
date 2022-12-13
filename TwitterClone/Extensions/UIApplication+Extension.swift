//
//  UIApplication+Extension.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-13.
//

import Foundation
import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(
            #selector(UIApplication.resignFirstResponder),
            to: nil,
            from: nil,
            for: .none
        )
    }
}
