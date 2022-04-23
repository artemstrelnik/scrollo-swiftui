import SwiftUI
import SDWebImageSwiftUI

struct ActionsView: View {
    var actions: [ActionModel]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Последнее")
                .font(.title)
            ForEach(0..<actions.count,  id: \.self) {index in
                HStack(alignment: .top) {
                    AnimatedImage(url: URL(string: actions[index].userphoto))
                        .resizable()
                        .frame(width: 60, height: 60)
                        .cornerRadius(5)
                    Text("\(actions[index].username) \(getType(type: actions[index].type)) \(actions[index].datetime)")
                    Spacer()
                    AnimatedImage(url: URL(string: actions[index].post))
                        .resizable()
                        .frame(width: 60, height: 60)
                        .cornerRadius(5)
                }
                .padding(.bottom, 20)
            }
            Text("Сегодня")
                .font(.title)
            ForEach(0..<actions.count,  id: \.self) {index in
                HStack(alignment: .top) {
                    AnimatedImage(url: URL(string: actions[index].userphoto))
                        .resizable()
                        .frame(width: 60, height: 60)
                        .cornerRadius(5)
                    Text("\(actions[index].username) \(getType(type: actions[index].type)) \(actions[index].datetime)")
                    Spacer()
                    AnimatedImage(url: URL(string: actions[index].post))
                        .resizable()
                        .frame(width: 60, height: 60)
                        .cornerRadius(5)
                }
                .padding(.bottom, 20)
            }
        }
        .padding()
    }
    
    func getType (type: ActionModelType) -> String {
        if type == .Like {
            return "нравится ваше фото"
        }
        if type == .Comment {
            return "упомянул вас в комментарии"
        }
        if type == .Subscribed {
            return "подписался на вас"
        }
        
        return ""
    }
}

struct ActionsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
