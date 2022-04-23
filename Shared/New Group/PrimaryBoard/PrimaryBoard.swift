import SwiftUI

struct PrimaryBoard: View {
    @State var selectedTab = "home"
    @StateObject var storyData = StoryViewModel()
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $selectedTab){
                HomeView()
                    .environmentObject(storyData)
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("home")
                SearchView()
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("search")
                NotificationsView()
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("activities")
                ProfileView()
                    .environmentObject(storyData)
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("profile")
            }
            Tabbar(selectedTab: $selectedTab)
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .overlay(
            StoryView()
                .environmentObject(storyData)
        )
    }
}

struct PrimaryBoard_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryBoard()
    }
}
