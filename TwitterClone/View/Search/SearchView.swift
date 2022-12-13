//
//  Search.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-12.
//

import SwiftUI

struct SearchView: View {
    @State var text = ""
    @State var isEditing = false

    var body: some View {
        VStack {
            SearchBarView(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            
            if !isEditing {
                List(0..<9) { i in
                    SearchCell(tag: "Hello", tweets: String(i))
                }
            } else {
                List(0..<9) { i in
                    SearchUserCell()
                }
            }
            
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
