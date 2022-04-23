import SwiftUI

struct SearchBar: View {
    @Binding var search: String
    var body: some View {
        HStack {
            HStack {
                TextField("Поиск", text: $search)
                Image(systemName: "magnifyingglass")
                    .font(.title2)
                    .foregroundColor(Color.gray)
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.primary.opacity(0.06))
            .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}

