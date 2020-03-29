
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image("Costa-Rica")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(50)
                .padding(.all)
            Text("First Line")
                .font(.largeTitle)
                .foregroundColor(.yellow)
            Text("Second Line")
                .font(.title)
                .foregroundColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
