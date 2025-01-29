//
//  mainTabView.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 13/01/25.
//

import SwiftUI

struct mainTabView: View {
    @State private var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex){
            FeedView()
                .onTapGesture {
                    selectedIndex = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            
            ExploreView()
                .onTapGesture {
                    selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            NotificationView()
                .onTapGesture {
                    selectedIndex = 2
                }
                .tabItem{
                    Image(systemName: "bell.fill")
                }.tag(2)
            
            MessagesView()
                .onTapGesture {
                    selectedIndex = 3
                }
                .tabItem{
                    Image(systemName: "message")
                }.tag(3)
        }
    }
}

#Preview {
    mainTabView()
}
