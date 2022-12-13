//
//  TweetCellView.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-12.
//

import SwiftUI

struct TweetCellView: View {
    
    var tweet: String
    var tweetImage: String?
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10) {
                userProfileImage

                bodyTweetCell

            }

        }

    }

    private var userProfileImage: some View {
        Image("TweetImage")
            .resizable()
            .clipShape(Circle())
            .frame(width: 65, height: 65)
            //.aspectRatio(contentMode: .fill)
    }

    private var usernameView: some View {
        HStack(alignment: .top, spacing: 10) {
            Text("Matt")
                .fontWeight(.bold)
                .foregroundColor(.primary)
            Text("@matt_fraser")
                .foregroundColor(.gray)
        }
    }

    private var bodyTweetCell: some View {
        VStack(alignment: .leading, spacing: 10) {
            usernameView
            
            Text("dfsdfsdfdsfsfdsdfsdf ds fdsfsdfsfsdf dsfsffs fsdfsfs fs ff dfsfsdfsgfgfdg dfgdfgdsf f dfsdf ds sdf s fdf ds dsf ")
                .frame(maxHeight: 100, alignment: .top)

            // TODO: - look at tweet image view

            if let image = tweetImage {
                GeometryReader { geometryProxy in
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometryProxy.frame(in: .global).width)
                        .cornerRadius(15)
                }.frame(height: 250)
            }

            bottomTweetCell
        }
    }

    private var bottomTweetCell: some View {
        HStack(spacing: 50) {
            Button {
                
            } label: {
                Image("Comments")
                    .resizable()
                    .frame(width: 16, height: 16)
            }.foregroundColor(.gray)
            
            Button {
                
            } label: {
                Image("Retweet")
                    .resizable()
                    .frame(width: 18, height: 14)
            }.foregroundColor(.gray)

            Button {
                
            } label: {
                Image("love")
                    .resizable()
                    .frame(width: 18, height: 15)
            }.foregroundColor(.gray)
            
            Button {
                
            } label: {
                Image("upload")
                    .resizable()
                    .renderingMode(.template) // Allows to change the color of the Image
                    .frame(width: 18, height: 15)
            }.foregroundColor(.gray)
        }.padding(.top, 4)
    }
}

struct TweetCellView_Previews: PreviewProvider {
    static var previews: some View {
        TweetCellView(tweet: "blah blah blah")
    }
}
