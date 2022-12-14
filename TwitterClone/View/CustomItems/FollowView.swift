//
//  FollowView.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-13.
//

import SwiftUI

struct FollowView: View {
    var followCount: Int
    var title: String // followers or following

    var body: some View {
        HStack {
            Text("\(followCount)")
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text(title)
                .foregroundColor(.gray)
        }
    }
}

struct FollowView_Previews: PreviewProvider {
    static var previews: some View {
        FollowView(followCount: 1, title: "following")
    }
}
