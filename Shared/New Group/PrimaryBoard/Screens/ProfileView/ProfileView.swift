import SwiftUI
import SDWebImageSwiftUI

struct ProfileView: View {
    @EnvironmentObject var storyData: StoryViewModel
    @StateObject var cardsData: SearchCardViewModel = SearchCardViewModel()
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack{
                    StickyHeader()
                    
                    ZStack(alignment: .top){
                        
                        VStack(spacing: 10) {
                            
                                HStack {
                                    VStack {
                                        Text("321k")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                        Text("подписчики")
                                            .foregroundColor(Color(hex: "#828796"))
                                    }
                                    Spacer()
                                    VStack {
                                        Text("125")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                        Text("подписки")
                                            .foregroundColor(Color(hex: "#828796"))
                                    }

                                }
                                .padding(.top, 28)
                                .padding(.horizontal, 33)
                            
                            VStack{
                                Text("Zinaida Dikaya")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                Text("Очень важная свецкая птица, львица, дич. Бизнес тренер, коуч, либералка. Живу на даче. www.vturage.net")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color(hex: "#828796"))
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal, 50)
                                    .padding(.top, 10)
                            }
                            .frame(width: UIScreen.main.bounds.width)
                            .padding(.top, 19)

                            
                            // buttons
                            HStack {
                                Spacer()
                                Button(action: {}) {
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(Color(hex: "#5B86E5"))
                                        .frame(width: 151, height: 45, alignment: .center)
                                        .overlay(
                                            Text("Подписаться")
                                                .foregroundColor(Color.white),
                                            alignment: .center
                                        )
                                }

                                Spacer(minLength: 10)

                                Button(action: {}) {

                                    Capsule(style: .continuous)
                                        .stroke(Color(hex: "#DDE8E8"), style: StrokeStyle(lineWidth: 1))
                                        .frame(width: 151, height: 45, alignment: .center)
                                        .overlay(
                                            Text("Написать")
                                                .foregroundColor(Color(hex: "#2E313C")),
                                            alignment: .center
                                        )
                                }

                                Spacer()

                            }
                            .padding(.top, 14)

                            //MARK: Story list
                            StoriesList(storyData: storyData)
                                .padding(.horizontal)
                                .padding(.top, 17)

                            //MARK: Tabs posts
                            HStack(spacing: 0) {
                                Button(action: {}) {
                                    Rectangle()
                                        .stroke(Color(hex: "#DDE8E8"), style: StrokeStyle(lineWidth: 1))
                                        .overlay(
                                            Image("profile_tab_saved_media_post_icon")
                                        )
                                }
                                Button(action: {}) {
                                    Rectangle()
                                        .stroke(Color(hex: "#DDE8E8"), style: StrokeStyle(lineWidth: 1))
                                        .overlay(
                                            Image("profile_tab_saved_text_post_icon")
                                        )
                                }
                            }
                            .frame(height: 55)
                            .padding(.vertical, 21)

                            //MARK: Tabs content
                           
                            
                            
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.white)
                        
                        AnimatedImage(url: URL(string: "https://picsum.photos/500/400"))
                            .resizable()
                            .frame(width: 101, height: 101, alignment: .center)
                            .cornerRadius(25)
                            .shadow(color: Color.black.opacity(0.5), radius: 4)
                            .offset(y: -55)
                        
                    }
                }
            })
            
            HStack{
                Button(action: {}, label: {
                    Image("profile_plus_icon")
                })
                Spacer(minLength: 0)
                Button(action: {}, label: {
                    Image("profile_menu_icon")
                })
            }
            .padding()
            .padding(.top, edges?.top)
            .background(Color.white.opacity(0))
        }) .ignoresSafeArea(.all, edges: .top)
       
    }
    
    
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct StickyHeader: View {
    var height: CGFloat = 100
    var body: some View {
        GeometryReader{reader in
            let minY = reader.frame(in: .global).minY
            
            Image("post1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: minY > 0 ? minY + height : height)
                .offset(y: -minY)
        }
        .frame(height: height)
       
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}


