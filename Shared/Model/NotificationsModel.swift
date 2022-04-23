import SwiftUI

enum ActionModelType {
    case Comment
    case Like
    case Subscribed
}

struct ActionModel: Identifiable {
    var id = UUID().uuidString
    var userphoto: String
    var post: String
    var username: String
    var type: ActionModelType
    var datetime: String
}
