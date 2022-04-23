import SwiftUI

struct PostMedia: View {
    @State private var slider_index : Int = 0
    @State var current_drag : CGFloat = 0
    @State private var objectWidth : CGFloat = UIScreen.main.bounds.width - 50
    @State private var objectPadding : CGFloat = 10
    var body: some View {
        Text("media post")
    }
}
