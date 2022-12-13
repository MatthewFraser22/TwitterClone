//
//  CreateTweetView.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-12.
//

import SwiftUI

struct CreateTweetView: View {
    @State private var text: String = ""

    var body: some View {
        VStack {
            topBar

            // Spacer()
            
            MultilineTextField(text: $text)
            
        }
    }

    private var topBar: some View {
        HStack {
            Button {
                
            } label: {
                Text("Cancel")
            }

            Spacer()

            Button {
                
            } label: {
                Text("Tweet")
                    .padding([.top, .bottom], 6)
                    .padding([.leading, .trailing], 12)
                    
            }
            .background(Color.background)
            .foregroundColor(.white)
            .clipShape(Capsule())



        }.padding()
    }
}

struct CreateTweetView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTweetView()
    }
}
