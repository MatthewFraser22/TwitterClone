//
//  Home.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-12.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            TabView {
                FeedView()
                    .tabItem {
                        Image("Home")
                    }

                SearchView()
                    .tabItem {
                        Image("Search")
                    }

                NotificationsView()
                    .tabItem {
                        Image("Notifications")
                    }

                MessagesView()
                    .tabItem {
                        Image("Messages")
                    }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
