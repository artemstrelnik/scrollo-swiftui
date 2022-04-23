import SwiftUI


class SlidingTabViewModel: ObservableObject {
    @Published var notificationsTabsSelected: NotificationsPresent = NotificationsPresent.Actions
    @Published var notificationsTabs: [SlidingTabModel] = [
        SlidingTabModel(label: "Действия", present: NotificationsPresent.Actions),
        SlidingTabModel(label: "Запросы", present: NotificationsPresent.Requests)
    ]
}
