//
//  MainTabView.swift
//  Resto
//
//  Created by Dilshad P on 06/04/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            
            ExploreView()
                .tabItem{
                    Label("Explore", systemImage: "magnifyingglass")
                }
                
            WishListView()
                .tabItem{
                    Label("Wishlist", systemImage: "heart")
                }
            
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person")
                }
            
        }
    }
}

#Preview {
    MainTabView()
}
