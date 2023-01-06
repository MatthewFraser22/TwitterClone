//
//  CustomAuthTextField.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-23.
//

import SwiftUI

struct CustomAuthTextField: View {
    var placeholder: String
    @Binding var text: String

    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(.gray)
                }
                TextField("", text: $text)
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

struct CustomAuthTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomAuthTextField(placeholder: "", text: .constant("username"))
    }
}
