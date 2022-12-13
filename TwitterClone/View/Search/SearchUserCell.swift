//
//  SearchUserCell.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-13.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack {
            Image("TweetImage")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Matt")
                    .fontWeight(.heavy)
                Text("@matt_fraser")
            }
        }
    }
}

struct SearchUserCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserCell()
    }
}
