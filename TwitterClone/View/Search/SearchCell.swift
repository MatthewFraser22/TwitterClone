//
//  SearchCell.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-13.
//

import SwiftUI

struct SearchCell: View {
    var tag = ""
    var tweets = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Hello")
                .fontWeight(.heavy)
            Text("\(tweets) Tweets")
                .fontWeight(.light)
            
        }
    }
}

struct SearchCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchCell()
    }
}
