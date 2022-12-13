//
//  Messages.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-12.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<9) { _ in
                    MessageCellView()
                }
            }
        }
    }
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
