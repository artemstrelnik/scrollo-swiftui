import SwiftUI
import SDWebImageSwiftUI

var width = UIScreen.main.bounds.width - 22
struct Layout1: View {
    var cards: [SearchCardModel]
    var body: some View {
        HStack(spacing: 4) {
            VStack(spacing: 4) {
                if cards.count >= 2 {
                    AnimatedImage(url: URL(string: cards[0].download_url))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: ((width / 3)), height: 123)
                        .cornerRadius(6)
                }
                if cards.count == 3 {
                    AnimatedImage(url: URL(string: cards[1].download_url))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: ((width / 3)), height: 123)
                        .cornerRadius(6)
                }

            }
            .frame(maxHeight: .infinity, alignment: .top)

            AnimatedImage(url: URL(string: cards[2].download_url))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: (width - (width / 3)), height: 250)
                .cornerRadius(6)
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

