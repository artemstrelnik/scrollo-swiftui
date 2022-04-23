import SwiftUI

class NotificationsViewModel: ObservableObject {
    @Published var actions: [ActionModel] = [
        ActionModel(userphoto: "https://i.picsum.photos/id/631/200/300.jpg?hmac=fgDzRjKee8EpUbckbz7kp1S1ssIqedrw2oOk5mBYQvk", post: "https://i.picsum.photos/id/631/200/300.jpg?hmac=fgDzRjKee8EpUbckbz7kp1S1ssIqedrw2oOk5mBYQvk", username: "flin_rosko", type: .Comment, datetime: "4 м"),
        ActionModel(userphoto: "https://i.picsum.photos/id/631/200/300.jpg?hmac=fgDzRjKee8EpUbckbz7kp1S1ssIqedrw2oOk5mBYQvk", post: "https://i.picsum.photos/id/631/200/300.jpg?hmac=fgDzRjKee8EpUbckbz7kp1S1ssIqedrw2oOk5mBYQvk", username: "flin_rosko", type: .Subscribed, datetime: "4 м"),
        ActionModel(userphoto: "https://i.picsum.photos/id/631/200/300.jpg?hmac=fgDzRjKee8EpUbckbz7kp1S1ssIqedrw2oOk5mBYQvk", post: "https://i.picsum.photos/id/631/200/300.jpg?hmac=fgDzRjKee8EpUbckbz7kp1S1ssIqedrw2oOk5mBYQvk", username: "flin_rosko", type: .Like, datetime: "4 м"),
        ActionModel(userphoto: "https://i.picsum.photos/id/631/200/300.jpg?hmac=fgDzRjKee8EpUbckbz7kp1S1ssIqedrw2oOk5mBYQvk", post: "https://i.picsum.photos/id/631/200/300.jpg?hmac=fgDzRjKee8EpUbckbz7kp1S1ssIqedrw2oOk5mBYQvk", username: "flin_rosko", type: .Comment, datetime: "4 м"),
    ]
}
