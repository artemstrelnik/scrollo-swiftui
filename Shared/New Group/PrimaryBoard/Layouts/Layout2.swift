import SwiftUI
import SDWebImageSwiftUI

struct Layout2: View {
    var cards: [SearchCardModel]
    var body: some View {
        HStack(spacing: 4) {
            AnimatedImage(url: URL(string: cards[0].download_url))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: ((width / 3)), height: 125)
                .cornerRadius(6)
            if cards.count >= 2 {
                AnimatedImage(url: URL(string: cards[1].download_url))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: ((width / 3)), height: 125)
                    .cornerRadius(6)

            }
            if cards.count == 3 {
                AnimatedImage(url: URL(string: cards[2].download_url))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: ((width / 3)), height: 125)
                    .cornerRadius(6)
            }
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

