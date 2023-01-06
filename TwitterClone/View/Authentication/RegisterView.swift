//
//  RegisterView.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-23.
//

import SwiftUI

struct RegisterView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            cancelButton
            createYourAccount
            createTextField
            Spacer(minLength: 0)
            bottomView
        }
    }

    private var cancelButton: some View {
        ZStack {
            HStack {
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(.blue)
                }

                Spacer()
            }
            .padding(.horizontal)

            Image("Twitter")
                .resizable()
                .scaledToFill()
                .padding(.trailing)
                .frame(width: .twitterIconTopBar, height: .twitterIconTopBar, alignment: .center)
        }
    }

    private var createYourAccount: some View {
        Text("Create your account")
            .font(.title)
            .bold()
            .padding(.top, 35)
    }

    private var createTextField: some View {
        VStack(alignment: .leading) {
            CustomAuthTextField(placeholder: "Name", text: $name)
            CustomAuthTextField(placeholder: "Phone number or email", text: $email)
            SecureAuthTextFieldView(placeholder: "Password", text: $password)
        }
    }

    private var bottomView: some View {
        VStack {
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)

            HStack {
                Spacer()

                Button {
                    
                } label: {
                    Capsule()
                        .frame(width: 60, height: 30, alignment: .center)
                        .foregroundColor(.background)
                        .overlay {
                            Text("Next")
                                .foregroundColor(.white)
                        }
                }

            }.padding(.trailing, 24)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
