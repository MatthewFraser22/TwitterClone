//
//  LoginView.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2023-01-03.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var emailDone = false
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        if !emailDone {
            usernameView
        } else {
            passwordView
        }
    }

    private var usernameView: some View {
        VStack {
            VStack {
                topBar
                usernameLoginView
            }

            Spacer(minLength: 0)

            bottomViewNextbutton
        }
    }

    private var passwordView: some View {
        VStack {
            VStack {
                topBar
                passwordLoginView
            }

            Spacer(minLength: 0)

            bottomViewLoginButton
        }
    }

    private var topBar: some View {
        ZStack {
            HStack {
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(.blue)
                }

                Spacer()

            }.padding(.horizontal)

            Image("Twitter")
                .resizable()
                .scaledToFill()
                .padding(.trailing)
                .frame(width: 20, height: 20)
        }
    }

    private var passwordLoginView: some View {
        VStack {
            Text("Enter your password")
                .font(.title2)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding([.horizontal, .top])

            SecureAuthTextFieldView(placeholder: "Password", text: $password)
        }
    }

    private var usernameLoginView: some View {
        VStack {
            Text("To get started forst enter your phone, email, or username")
                .font(.title2)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding([.horizontal, .top])

            CustomAuthTextField(placeholder: "Phone, email, or username", text: $email)
        }
    }

    private var bottomViewNextbutton: some View {
        VStack {
            Button {
                if !email.isEmpty {
                    self.emailDone.toggle()
                }
            } label: {
                Capsule()
                    .frame(width: 360, height: 40, alignment: .center)
                    .foregroundColor(.background)
                    .overlay {
                        Text("Next")
                            .foregroundColor(.white)
                    }
            }.padding(.bottom, 4)

            Text("Forgot Password?")
                .foregroundColor(.blue)
        }
    }
    
    private var bottomViewLoginButton: some View {
        VStack {
            Button {
                
            } label: {
                Capsule()
                    .frame(width: 360, height: 40, alignment: .center)
                    .foregroundColor(.background)
                    .overlay {
                        Text("Login in")
                            .foregroundColor(.white)
                    }
            }.padding(.bottom, 4)

            Text("Forgot Password?")
                .foregroundColor(.blue)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
