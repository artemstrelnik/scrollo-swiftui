import SwiftUI
import SDWebImageSwiftUI

struct StoryCardView: View {
    @State var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var timerProgress: CGFloat = 0
    @EnvironmentObject var storyData: StoryViewModel
    @Binding var story: StoryModel
   
    var body: some View {
        GeometryReader {proxy in
            ZStack() {
                let index = min(Int(timerProgress), story.stories.count - 1)
                if let st = story.stories[index] {
                    AnimatedImage(url: URL(string: st.imageUrl))
                        .resizable()
//                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .overlay(
                HStack {
                    Rectangle()
                        .fill(Color.black.opacity(0.01))
                        .onTapGesture {
                            if (timerProgress - 1) < 0 {
                                updateStory(forward: false)
                            } else {
                                timerProgress = CGFloat(Int(timerProgress - 1))
                            }
                        }
                    Rectangle()
                        .fill(Color.black.opacity(0.01))
                        .onTapGesture {
                            if (timerProgress + 1) > CGFloat(story.stories.count) {
                                updateStory()
                            } else {
                                timerProgress = CGFloat(Int(timerProgress + 1))
                            }
                        }
                }
            )
            .overlay (
                HStack(spacing: 13) {
                    AnimatedImage(url: URL(string: story.profileImage))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                        .clipShape(Circle())
                    Text(story.profileName)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Spacer()
                    Button(action: {
                        withAnimation {
                            storyData.showStory = false
                        }
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.title2)
                            .foregroundColor(Color.white)
                    })
                }
                .padding(),
                alignment: .topTrailing
            )
            .overlay(
                HStack(spacing: 5) {
                    ForEach(storyData.stories.indices) {index in
                        GeometryReader{proxy in
                            let width = proxy.size.width
                            let progress = timerProgress - CGFloat(index)
                            let perfectProgress = min(max(progress, 0), 1)
                            Capsule()
                                .fill(Color.gray.opacity(0.5))
                                .overlay(
                                    Capsule()
                                        .fill(Color.white)
                                        .frame(width: width * perfectProgress)
                                    , alignment: .leading
                                )
                        }
                    }
                }
                .frame(height: 1.5)
                .padding(.horizontal)
                ,alignment: .top)
            .rotation3DEffect(
                getAngle(proxy: proxy),
                axis: (x: 0, y: 1, z: 0),
                anchor: proxy.frame(in: .global).minX > 0 ? .leading : .trailing,
                perspective: 2.5
            )
        }
        .onAppear(perform: {
            timerProgress = 0
        })
        .onReceive(timer, perform: { _ in
            if storyData.currentStory == story.id {
                if !story.isSeen {
                    story.isSeen = true
                }
                
                if timerProgress < CGFloat(story.stories.count) {
                    timerProgress += 0.03
                } else {
                    updateStory()
                }
            }
        })
    }

    func updateStory(forward: Bool = true) {
        let index = min(Int(timerProgress), story.stories.count - 1)
        let st = story.stories[index]
        
        if !forward {
            
            if let first = storyData.stories.first, first.id != story.id {
                let storyIndex = storyData.stories.firstIndex {currentStory in
                    return story.id == currentStory.id
                } ?? 0
                
                withAnimation {
                    storyData.currentStory = storyData.stories[storyIndex - 1].id
                }
            } else {
                timerProgress = 0
            }
            
            return
        }
        
        if let last = story.stories.last, last.id == st.id {
            if let lastStory = storyData.stories.last, lastStory.id == story.id {
                withAnimation {
                    storyData.showStory = false
                }
            } else {
                let storyIndex = storyData.stories.firstIndex {currentStory in
                    return story.id == currentStory.id
                } ?? 0
                
                withAnimation {
                    storyData.currentStory = storyData.stories[storyIndex + 1].id
                }
            }
        }
    }

    func getAngle(proxy: GeometryProxy) -> Angle {
        let progress = proxy.frame(in: .global).minX / proxy.size.width
        let rotationAngle: CGFloat = 45
        let degrees = rotationAngle * progress
        return Angle(degrees: Double(degrees))
    }
}

struct StoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
