//
//  Image+Extensions.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-12.
//

import Foundation
import SwiftUI

extension Image {
    static let tweet = Images(rawValue: Images.tweetImage.rawValue)
}

enum Images: String {
    case tweetImage = "tweet"
}
