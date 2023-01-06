//
//  SecureAuthTextFieldView.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2023-01-02.
//

import SwiftUI

struct SecureAuthTextFieldView: View {
    var placeholder: String
    @Binding var text: String

    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(.gray)
                }
                SecureField("", text: $text)
                    .frame(height: 45)
                    .foregroundColor(.background)
            }

            Rectangle()
                .frame(height: 1, alignment: .center)
                .foregroundColor(.gray)
                .padding(.top, -2)
        }.padding(.horizontal)
    }
}

struct SecureAuthTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecureAuthTextFieldView(placeholder: "password", text: .constant("password"))
    }
}
