//
//  Feed.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-12.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 18) {
                TweetCellView(tweet: "test", tweetImage: "post")
                Divider()
                ForEach(1...20, id: \.self) { _ in
                    TweetCellView(tweet: "Matthew Fraser")
                    Divider()
                }
            }.padding([.top, .horizontal])
                .zIndex(0)
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
