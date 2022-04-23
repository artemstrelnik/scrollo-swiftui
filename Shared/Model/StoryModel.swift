//
//  StoryModel.swift
//  scrollo-ios (iOS)
//
//  Created by user on 11.04.2022.
//

import SwiftUI

struct StoryModel: Identifiable, Hashable {
    var id = UUID().uuidString
    var profileName: String
    var profileImage: String
    var isSeen: Bool
    var stories: [Story]
}

struct Story: Identifiable, Hashable {
    var id = UUID().uuidString
    var imageUrl: String
}
