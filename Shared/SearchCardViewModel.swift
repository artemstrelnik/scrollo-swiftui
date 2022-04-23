import SwiftUI

class SearchCardViewModel: ObservableObject {
    @Published var cards : [SearchCardModel] = []
    @Published var search: String = ""
    @Published var compositionArray : [[SearchCardModel]] = []
    
    init () {
        fetchCards()
    }
    
    func fetchCards() {
        let url = "https://picsum.photos/v2/list?page=2&limit=12"
        let session = URLSession(configuration: .default)
        session.dataTask(with: URL(string: url)!) { (data, _, _) in
            guard let json = data else {return}
            let jsonValues = try? JSONDecoder().decode([SearchCardModel].self, from: json)
            guard let cards = jsonValues else {return}
            DispatchQueue.main.async {
                self.cards = cards
                self.setCompositionLayer()
            }
        }
        .resume()
    }
    
    func setCompositionLayer() {
        var currentArrayCards: [SearchCardModel] = []
        
        cards.forEach { (card) in
            currentArrayCards.append(card)
            
            if currentArrayCards.count == 3 {
                compositionArray.append(currentArrayCards)
                currentArrayCards.removeAll()
            }
            
            if currentArrayCards.count != 3 {
                
            }
        }
    }
    
}
