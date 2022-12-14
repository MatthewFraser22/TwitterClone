//
//  SlideMenuView.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-13.
//

import SwiftUI

struct SlideMenuView: View {

    // MARK: - Variables

    @State private var chevronToggle: Bool = true
    var menuButtons = ["Profile", "Lists", "Topics", "Bookmarks", "Moments"]
    var width = UIScreen.main.bounds.width
    var edges = UIApplication.shared.windows.first?.safeAreaInsets

    // MARK: - Body

    var body: some View {
        VStack {
            HStack(spacing: 0) {
                VStack(alignment: .leading) {
                    profileImageView
                    topSectionView
                    coreButtonsView
                    createOrAddAccountView
                }
                .padding(.horizontal, 20)
                .padding(.top, edges!.top == 0 ? 15 : edges?.top)
                .padding(.bottom, edges!.bottom == 0 ? 15 : edges?.bottom)
                .frame(width: width - 90)
                .background(Color.white)
                .ignoresSafeArea(.all, edges: .vertical)
                
                Spacer(minLength: 0)
            }
        }
    }

    // MARK: - Profile Image

    private var profileImageView: some View {
        Image("TweetImage")
            .resizable()
            .frame(width: 60, height: 60)
            .clipShape(Circle())
    }

    // MARK: - Top Section

    private var topSectionView: some View {
        HStack(alignment: .top, spacing: 12) {

            VStack(alignment: .leading, spacing: 12) {
                Text("Matt")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Text("@matt_fraser")
                    .foregroundColor(.gray)
                
                HStack(spacing: 20) {
                    FollowView(followCount: 2000, title: "Following")
                    FollowView(followCount: 1000, title: "Followers")
                }
                .padding(.top, 10)
                
                Divider()
                    .padding(.top, 10)
                    
            }

            Spacer(minLength: 0)

            Button {
                withAnimation {
                    self.chevronToggle.toggle()
                }

            } label: {
                Image(systemName: chevronToggle ? "chevron.down" : "chevron.up")
                        .foregroundColor(.background)
            }
        }
    }

    // MARK: - Core Section

    private var coreButtonsView: some View {
        VStack(alignment: .leading) {
            ForEach(menuButtons, id: \.self) { item in
                MenuButtonView(title: item)
            }

            Divider()

            Button {
                
            } label: {
                MenuButtonView(title: "Twitter Ads")
            }

            Divider()
            
            Button {
                
            } label: {
                Text("Settings and privacy")
                    .foregroundColor(.blue)
            }.padding(.top, 20)
            
            Button {
                
            } label: {
                Text("Help center")
                    .foregroundColor(.blue)
            }

            
            Spacer(minLength: 0)
            
            Divider()
                .padding(.bottom)
            
            barcodeAndHelpView
        }
        .opacity(chevronToggle ? 1 : 0)
        .frame(height: chevronToggle ? nil : 0)
    }

    // MARK: - Add or Create Account

    private var createOrAddAccountView: some View {
        VStack(alignment: .leading) {
            Button {
                
            } label: {
                Text("Create a new account")
                    .foregroundColor(.background)
            }
            
            Button {
                
            } label: {
                Text("Add an existing account")
                    .foregroundColor(.background)
            }

            Spacer(minLength: 0)


        }
        .opacity(!chevronToggle ? 1 : 0)
        .frame(height: !chevronToggle ? nil : 0)
    }

    // MARK: - Barcode and Help

    private var barcodeAndHelpView: some View {
        HStack {
            Button {
                
            } label: {
                Image("help")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 26, height: 26)
                    .foregroundColor(.background)
            }
            
            Spacer(minLength: 0)

            Button {
                
            } label: {
                Image("barcode")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 26, height: 26)
                    .foregroundColor(.background)
            }
        }
    }
}
