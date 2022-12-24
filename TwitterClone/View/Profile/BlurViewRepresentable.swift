//
//  BlurViewRepresentable.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-14.
//

import Foundation
import SwiftUI

struct BlurViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemThinMaterialDark))
        
        return view
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
