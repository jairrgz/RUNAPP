//
//  MainTabView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 4/01/25.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: TabItem = .activity
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    Label(TabItem.feed.name, systemImage: TabItem.feed.iconName)
                }
                .tag(TabItem.feed)
            
            CommunityView()
                .tabItem {
                    Label(TabItem.community.name, systemImage: TabItem.community.iconName)
                }
                .tag(TabItem.community)
            
            ActivityView()
                .tabItem {
                    Label(TabItem.activity.name, systemImage: TabItem.activity.iconName)
                }
                .tag(TabItem.activity)
            
            ProgressView()
                .tabItem {
                    Label(TabItem.progress.name, systemImage: TabItem.progress.iconName)
                }
                .tag(TabItem.progress)
            
            ProfileView()
                .tabItem {
                    Label(TabItem.profile.name, systemImage: TabItem.profile.iconName)
                }
                .tag(TabItem.profile)
        }
        .tint(.black)
    }
}
