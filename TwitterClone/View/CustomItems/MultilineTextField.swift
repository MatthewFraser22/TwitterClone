//
//  MultilineTextField.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-12.
//

import Foundation
import SwiftUI

struct MultilineTextField: UIViewRepresentable {

    @Binding var text: String

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    func makeUIView(context: Context) -> some UITextView {
        let textView = UITextView()

        textView.text = "What's Happening?"
        textView.isUserInteractionEnabled = true
        textView.font = .systemFont(ofSize: 20)
        textView.delegate = context.coordinator
        textView.textColor = .gray

        return textView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }

    class Coordinator: NSObject, UITextViewDelegate {
        var parent: MultilineTextField

        init(parent: MultilineTextField) {
            self.parent = parent
        }

        func textViewDidBeginEditing(_ textView: UITextView) {
            textView.text = ""
            textView.textColor = .black
        }
        
        func textViewDidChange(_ textView: UITextView) {
            self.parent.text = textView.text
        }
    }

}
