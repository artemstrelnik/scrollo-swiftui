import SwiftUI

struct NotificationsView: View {
    @StateObject var tabs: SlidingTabViewModel = SlidingTabViewModel()
    @StateObject var notificationsData: NotificationsViewModel = NotificationsViewModel()
    var body: some View {
        VStack {
            HeaderBar(selected: $tabs.notificationsTabsSelected, tabs: tabs.notificationsTabs)
            ScrollView(showsIndicators: false) {
                if tabs.notificationsTabsSelected == .Actions {
                    ActionsView(actions: notificationsData.actions)
                }
                if tabs.notificationsTabsSelected == .Requests {
                    RequestsView()
                }
            }
            .padding(.bottom, 100)
        }
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct HeaderBar: View {
    @Binding var selected: NotificationsPresent
    var tabs: [SlidingTabModel]
    let LINE_WIDTH: CGFloat = (UIScreen.main.bounds.width / 2) - 20
    var body: some View {
        HStack {
            ForEach(0..<tabs.count, id: \.self){index in
                Button(action: {
                    selected = tabs[index].present
                }) {
                    Text("\(tabs[index].label)")
                        .foregroundColor(Color(hex: "#5B86E5"))
                        .frame(width: LINE_WIDTH, height: 50, alignment: .center)
                }
                if index == 0 {
                    Spacer()
                }
            }
        }
        .padding(.horizontal, 20)
        .overlay(
            Rectangle()
                .fill(Color(hex: "#5B86E5"))
                .frame(width: LINE_WIDTH, height: 3)
                .offset(x: getLinePosition(), y: (50 / 2) + 1.5)
                .padding(.horizontal, 20),
            alignment: .leading
        )
        
    }
    
    func getLinePosition () -> CGFloat{
        if selected == NotificationsPresent.Actions {
            return 0
        }
        if selected == NotificationsPresent.Requests {
            return LINE_WIDTH + 8
        }
        return 0
    }
}

