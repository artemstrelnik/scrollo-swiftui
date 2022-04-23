import SwiftUI
import SDWebImageSwiftUI

struct StoriesList: View {
    var storyData: StoryViewModel
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                StoriesListItem(story: nil, isMyStory: true)
                
                ForEach(0..<storyData.stories.count){index in
                    StoriesListItem(story: storyData.stories[index], isMyStory: false)
                }
            }.padding(.horizontal)
        }
    }
    
    @ViewBuilder
    func StoriesListItem (story: StoryModel? = nil, isMyStory: Bool = false) -> some View {
        if (story != nil) && !isMyStory {
            VStack {
                AnimatedImage(url: URL(string: story!.profileImage))
                    .resizable()
                    .frame(width: 58, height: 58, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding([.horizontal, .vertical], 8)
                    .background(
                        Color.white
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                            .opacity(story!.isSeen ? 0 : 1)
                        .frame(width: 66, height: 66, alignment: .center)
                        
                    )
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color(hex: "#36DCD8"),
                                Color(hex: "#5B86E5")
                            ]),
                            startPoint: .trailing, endPoint: .leading
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .opacity(story!.isSeen ? 0 : 1)
                        .frame(width: 70, height: 70, alignment: .center)
                    )
                    .onTapGesture {
                        withAnimation {
                            storyData.currentStory = story!.id
                            storyData.showStory = true
                        }
                }
                Text(story!.profileName)
                    .frame(width: 70)
                    .lineLimit(1)
                    .fixedSize()
            }
            .frame(width: 70)
            
        } else {
            VStack {
                Rectangle()
                    .fill(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [5.0]))
                    )
                    .overlay(
                        Image(systemName: "plus")
                    )
                    .frame(width: 58, height: 58, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding([.horizontal, .vertical], 8)
                    .background(
                        Color.white
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .frame(width: 66, height: 66, alignment: .center)
                    )
                    
                    .background(
                        Color.gray                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .frame(width: 70, height: 70, alignment: .center)
                    )
                Text("Вы")
            }
        }
    }
}

struct StoriesList_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryBoard()
    }
}

