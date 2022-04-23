//
//  Tabbar.swift
//  scrollo-ios (iOS)
//
//  Created by user on 10.04.2022.
//

import SwiftUI

struct Tabbar: View {
    @Binding var selectedTab: String
    var body: some View {
        HStack(spacing: 0) {
            TabbarButton(image: "home_inactive", image_active: "home_active", action: {
                withAnimation(.spring()) {
                    self.selectedTab = "home"
                }
            }, isActive: selectedTab == "home")
            Spacer(minLength: 0)
            TabbarButton(image: "search_inactive", image_active: "search_active", action: {
                withAnimation(.spring()) {
                    self.selectedTab = "search"
                }
            }, isActive: selectedTab == "search")
            Spacer(minLength: 0)
            TabbarButton(image: "plus_fill_inactive", image_active: "plus_fill_active", action: {
                
            }, isActive: false)
            Spacer(minLength: 0)
            TabbarButton(image: "alarm_inactive", image_active: "alarm_active", action: {
                withAnimation(.spring()) {
                    self.selectedTab = "activities"
                }
            }, isActive: selectedTab == "activities")
            Spacer(minLength: 0)
            TabbarButton(image: "profile_inactive", image_active: "profile_active", action: {
                withAnimation(.spring()) {
                    self.selectedTab = "profile"
                }
            },isActive: selectedTab == "profile")
        }
        .frame(height: 50)
        .padding(.horizontal, 30)
        .padding(.vertical)
        .background(Color.white.cornerRadius(12))
        .padding(.horizontal)
        .padding(.vertical)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
    }
}
