//
//  WelcomeView.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-23.
//

import SwiftUI

struct WelcomeView: View {

    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10) {
                topBar
                Spacer()
                welcomeText
                Spacer()
                signinButtonView
                dividerView
                createAccountButton
                bottomView
            }
            .navigationTitle("")
            .toolbar(.hidden)
        }
    }

    private var topBar: some View {
        HStack {
            Spacer()
            Image("Twitter")
                .resizable()
                .scaledToFill()
                .padding(.trailing)
                .frame(width: .twitterIconTopBar, height: .twitterIconTopBar, alignment: .center)
            Spacer()
        }
    }

    private var welcomeText: some View {
        Text("See what's happening in the world right now.")
            .fontWeight(.bold)
            .foregroundColor(.black)
            .font(.system(size: 30, weight: .heavy, design: .default))
            .padding([.leading, .trailing], 20)
    }

    private var signinButtonView: some View {
        VStack(alignment: .center, spacing: 8) {
            ReusableButtonCapsuleView(image: "google", text: "Continue with Google")
            ReusableButtonCapsuleView(image: "apple", text: "Continue with Apple")

        }
    }

    private var dividerView: some View {
        HStack(spacing: 5) {
            Rectangle()
                .foregroundColor(Color(uiColor: .systemGray5))
                .frame(width: (getRect().width * 0.35), height: 1)

            Text("Or")
                .foregroundColor(Color(uiColor: .systemGray2))
                .font(.system(size: 17))
                .fontWeight(.medium)

            Rectangle()
                .frame(width: (getRect().width * 0.35), height: 1)
                .foregroundColor(Color(uiColor: .systemGray5))
        }
    }

    private var createAccountButton: some View {
        NavigationLink(destination: RegisterView().toolbar(.hidden)) {
            RoundedRectangle(cornerRadius: 36)
                .foregroundColor(.background)
                .frame(width: 320, height: 60, alignment: .center)
                .overlay {
                    Text("Create account")
                        .fontWeight(.bold)
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                }
        }
    }

    private var bottomView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("By signing up, you agree to our ") +
            Text("Terms")
                .foregroundColor(.background) +
            Text(", ") +
            Text("Privacy Policy")
                .foregroundColor(.background) +
            Text(", Cookie Use.")
                .foregroundColor(.background)

            HStack(spacing: 2) {
                Text("Have an account already? ")
                NavigationLink(destination: LoginView().toolbar(.hidden)) {
                    Text("Log in")
                        .foregroundColor(.background)
                }
            }
        }
        .padding([.leading, .trailing], 10)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
