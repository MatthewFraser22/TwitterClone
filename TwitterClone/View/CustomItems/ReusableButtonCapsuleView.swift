//
//  ResuableButtonCapsuleView.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-23.
//

import SwiftUI

struct ReusableButtonCapsuleView: View {
    var image: String
    var text: String

    var body: some View {
        Button {
            print("Tapped")
        } label: {
            HStack(alignment: .center, spacing: 10) {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 26, height: 26)
                Text(text)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .font(.system(size: 18))
            }
            .frame(width: CGFloat.buttonWidth, height: CGFloat.buttonHeight)
            .background(
                Capsule()
                    .stroke(Color(.systemGray2), lineWidth: 0.8)
            )
        }
        //.padding([.top, .bottom], 11)
        .padding([.leading, .trailing], 25)
        
        
        
    }
}

struct ResuableButtonCapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        ReusableButtonCapsuleView(
            image: "google",
            text: "Continue with Google"
        )
    }
}
