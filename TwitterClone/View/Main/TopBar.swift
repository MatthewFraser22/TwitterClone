//
//  TopBar.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-13.
//

import SwiftUI

struct TopBar: View {

    @Binding var x: CGFloat
    @State private var width = UIScreen.main.bounds.width

    var body: some View {
        VStack {
            topBarUI
            dividerView
        }.background(Color.white)
    }

    private var topBarUI: some View {
        HStack {
            Button {
                withAnimation {
                    x = 0
                }
            } label: {
                Image(systemName: "line.horizontal.3")
                    .font(.system(size: 24))
                    .foregroundColor(.background)
            }

            Spacer(minLength: 0)

            Image("Twitter")
                .resizable()
                .scaledToFill()
                .padding(.trailing)
                .frame(width: 20, height: 20)

            Spacer(minLength: 0)

        }.padding()
    }

    private var dividerView: some View {
        Rectangle()
            .frame(width: width, height: 1, alignment: .center)
            .foregroundColor(.gray)
            .opacity(0.3)
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar(x: .constant(0))
    }
}
