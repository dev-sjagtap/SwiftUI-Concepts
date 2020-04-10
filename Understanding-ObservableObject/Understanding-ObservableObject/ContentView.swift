
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var fancyTimer = FancyTimer()
    @ObservedObject var userSettings = UserSettings()
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            
            Text("\(self.fancyTimer.value)")
                .font(.largeTitle)
            
            Text("Your Score: \(userSettings.score)")
                .font(.title)
            
            Button(action: {
                self.userSettings.score += 1
            }) {
                Text("Update Score")
            }.padding(10)
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
