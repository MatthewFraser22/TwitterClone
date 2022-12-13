//
//  MessageCellView.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-13.
//

import SwiftUI

struct MessageCellView: View {

    @State private var width = UIScreen.main.bounds.width

    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)

            HStack(alignment: .top) {
                Image("TweetImage")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .clipShape(Circle())
                    .padding(.leading)

                VStack(alignment: .leading) {
                    HStack {
                        Text("Matt")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)

                        Text("@matt_fraser")
                            .foregroundColor(.gray)
                    }
                    Text("You: Hey! How is it going ?")
                        .foregroundColor(.gray)
                }

                Text("6/20/21")
                    .foregroundColor(.gray)
                    .padding(.trailing)
            }
        }
    }
}

struct MessageCellView_Previews: PreviewProvider {
    static var previews: some View {
        MessageCellView()
    }
}
