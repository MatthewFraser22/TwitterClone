//
//  MainView.swift
//  TwitterClone
//
//  Created by Matthew Fraser on 2022-12-13.
//

import SwiftUI
import Combine

struct MainView: View {
    // MARK: - Variables

    @State var width = UIScreen.main.bounds.width - 90
    @State var x = -UIScreen.main.bounds.width + 90

    // MARK: - Body

    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                    VStack {
                        TopBar(x: $x)
                        HomeView()
                    }.offset(x: x + width)
                    slideMenu
                }.gesture(
                    DragGesture()
                        .onChanged({ value in
                            withAnimation {
                                if value.translation.width > 0 {
                                    if x < 0 {
                                        x = -width + value.translation.width
                                    }
                                } else {
                                    if x != -width {
                                        x = value.translation.width
                                    }
                                }
                            }
                        })
                        .onEnded({ value in
                            withAnimation {
                                if -x < width/2 {
                                    x = 0
                                } else {
                                    x = -width
                                }
                            }
                        })
                )
            }
            .toolbar(.hidden)
            .navigationTitle("")
        }
    }

    // MARK: Slide Menu

    private var slideMenu: some View {
        SlideMenuView()
            .shadow(color: .black.opacity(x != 0 ? 0.1 : 0), radius: 5, x: 5, y: 0)
            .offset(x: x)
            .background(Color.black.opacity(x == 0 ? 0.5 : 0))
            .ignoresSafeArea(.all, edges: .vertical)
            .onTapGesture {
                withAnimation {
                    x = -width
                }
            }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
