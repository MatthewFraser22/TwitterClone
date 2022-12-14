//
//  MenuButtonView.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-13.
//

import SwiftUI

struct MenuButtonView: View {
    var title: String

    var body: some View {
        HStack(spacing: 15) {
            Image(title)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24, height: 24)
                .foregroundColor(.gray)
            
            Text(title)
                .foregroundColor(.black)

            Spacer(minLength: 0)

        }.padding(.vertical)
    }
}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtonView(title: "TweetImage")
    }
}
