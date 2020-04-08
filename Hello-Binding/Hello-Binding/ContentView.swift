
import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    
    private func printName() {
        print(name)
    }
    
    var body: some View {
        VStack {
            Text(name)
            TextField("Enter name", text: $name)
            .padding(12)
            Button(action: printName) {
                Text("Print Name")
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
