//
//  SearchbarView.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-13.
//

import SwiftUI
import UIKit

struct SearchBarView: View {
    @Binding var text: String
    @Binding var isEditing: Bool

    var body: some View {
        HStack {
            TextField("Search Twitter", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(8)
                    }
                }
                .onTapGesture {
                    isEditing = true
                }
            
            Button {
                isEditing = false
                text = ""
                UIApplication.shared.endEditing()
            } label: {
                Text("Cancel")
                    .foregroundColor(.black)
                    .padding(.trailing, 8)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
            }

        }
    }
}

struct SearchbarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(text: .constant("test"), isEditing: .constant(false))
    }
}
