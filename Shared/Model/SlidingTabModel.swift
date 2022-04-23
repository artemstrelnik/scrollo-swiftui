import SwiftUI

enum NotificationsPresent {
    case Actions, Requests
}

struct SlidingTabModel: Identifiable {
    var id = UUID().uuidString
    var label: String
    var present: NotificationsPresent
}
