import SwiftUI

struct StoryView: View {
    @EnvironmentObject var storyData: StoryViewModel
    
    var body: some View {
        if storyData.showStory {
            TabView(selection: $storyData.currentStory) {
                ForEach(0..<storyData.stories.count){index in
                    StoryCardView(story: $storyData.stories[index])
                        .tag(storyData.stories[index].id)
                        .environmentObject(storyData)
                    
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
            .transition(.move(edge: .bottom))
            .ignoresSafeArea(.all, edges: .all)
        }
    }
}
