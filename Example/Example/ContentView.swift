import SwiftUI
import Localizability

struct ContentView: View {
    var body: some View {
        LocalizedText(key: .thisIsASampleText)
            .font(.title)
            .padding()
        LocalizedText[.thisIsASampleText]
            .font(.title)
            .padding()
        Text(Localized[.thisIsASampleText])
            .font(.title)
            .padding()
        Text(Localized[.iLikeString, "apples"])
            .font(.title2)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
