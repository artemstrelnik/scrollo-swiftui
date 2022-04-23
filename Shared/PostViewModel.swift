import SwiftUI

class PostViewModel: ObservableObject {
    @Published var posts: [PostModel] = [
        PostModel(username: "username", place: "place", likes: 10, dislikes: 20, comments: 30, isBookmark: false, type: "text", content: "Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.Hey! This is my first post.", files: ["post1", "post2", "post3"]),
        PostModel(username: "username", place: "place", likes: 10, dislikes: 20, comments: 30, isBookmark: false, type: "text", content: "Hey! This is my first post.Hey!", files: [])
    ]
}
