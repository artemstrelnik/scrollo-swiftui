import SwiftUI

struct SearchView: View {
    @StateObject var cardsData: SearchCardViewModel = SearchCardViewModel()
    var body: some View {
        VStack {
            SearchBar(search: $cardsData.search)
            if cardsData.cards.isEmpty {
                ProgressView()
                    .frame(minWidth: .infinity, maxHeight: .infinity)
            } else {
                ScrollView {
                    VStack(spacing: 4) {
                        ForEach(cardsData.compositionArray.indices, id: \.self) {index in
                            if index == 0  {
                                Layout1(cards: cardsData.compositionArray[index])
                            } else if index % 3 == 0 {
                                Layout3(cards: cardsData.compositionArray[index])
                            } else {
                                Layout2(cards: cardsData.compositionArray[index])
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 18)
                }
            }
        }
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
        
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
