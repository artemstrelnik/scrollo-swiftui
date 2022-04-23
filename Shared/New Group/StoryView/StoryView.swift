//
//  StoryView.swift
//  scrollo-ios (iOS)
//
//  Created by user on 11.04.2022.
//
import Foundation
import UIKit
import SwiftUI

struct StoryView: View {
    @EnvironmentObject var storyData: StoryViewModel
    var body: some View {
        if storyData.showStory {
            
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
