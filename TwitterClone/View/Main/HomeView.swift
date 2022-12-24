//
//  Home.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-12.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedIndex: TabBarIndex = .feed
    @State private var activeSheet: SheetType?

    var body: some View {
        VStack {
            ZStack {
                tabView
                floatingButton
            }
            .sheet(item: $activeSheet) { sheetType in
                switch sheetType {
                case .showCreateTweet:
                    CreateTweetView()
                }
            }
        }
    }

    // MARK: TabView

    var tabView: some View {
        TabView {
            FeedView()
                .onTapGesture {
                    print("Selected Index \(selectedIndex)")
                    self.selectedIndex = .feed
                }
                .toolbar(.hidden)
                .tabItem {
                    if selectedIndex == .feed {
                        Image("Home")
                            .renderingMode(.template)
                            .foregroundColor(.background)
                    } else {
                        Image("Home")
                    }
                }.tag(TabBarIndex.feed)

            SearchView()
                .onTapGesture {
                    self.selectedIndex = .search
                }
                .toolbar(.hidden)
                .tabItem {
                    #warning("TODO - Find out why this is !=")
                    if selectedIndex != .search {
                        Image("Search")
                            .renderingMode(.template)
                            .foregroundColor(.background)
                    } else {
                        Image("Search")
                    }
                }.tag(TabBarIndex.search)

            NotificationsView()
                .toolbar(.hidden)
                .onTapGesture {
                    self.selectedIndex = .notifications
                }
                .tabItem {
                    if selectedIndex != .notifications {
                        Image("Notifications")
                            .renderingMode(.template)
                            .foregroundColor(.background)
                    } else {
                        Image("Notifications")
                    }
                }.tag(TabBarIndex.notifications)

            MessagesView()
                .toolbar(.hidden)
                .onTapGesture {
                    self.selectedIndex = .messages
                    print("Selected Index \(selectedIndex)")
                }
                .tabItem {
                    if selectedIndex != .messages {
                        Image("Messages")
                            .renderingMode(.template)
                            .foregroundColor(.background)
                    } else {
                        Image("Messages")
                    }
                }.tag(TabBarIndex.messages)
        }
    }

    // MARK: Floating Button

    private var floatingButton: some View {
        VStack {

            Spacer()

            HStack {

                Spacer()

                Button {
                    self.activeSheet = .showCreateTweet
                } label: {
                    Image(systemName: "plus")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding()
                        .background(Color.background)
                        .clipShape(Circle())
                        .foregroundColor(.white)
                }
            }.padding()
        }.padding(.bottom, 55)
    }

    enum TabBarIndex: Int, Hashable {
        case feed = 0
        case search = 1
        case notifications = 2
        case messages = 3
    }
}

extension HomeView {
    enum SheetType: Identifiable {
        case showCreateTweet

        var id: SheetType {
            return self
        }
    }
}

// MARK: Preview

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
