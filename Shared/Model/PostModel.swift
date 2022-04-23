//
//  PostModel.swift
//  scrollo-ios (iOS)
//
//  Created by user on 11.04.2022.
//

import SwiftUI

struct PostModel: Identifiable {
    var id = UUID().uuidString
    var username: String
    var place: String
    var likes: Int
    var dislikes: Int
    var comments: Int
    var isBookmark: Bool
    var type: String
    var content: String
    var files: [String]
}
