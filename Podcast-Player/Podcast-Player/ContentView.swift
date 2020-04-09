
import SwiftUI

struct ContentView: View {
    
    let episode = Episode(name: "Macbreak Weekly", track: "WWDC 2019")
    @State private var isPlaying: Bool = false
    
    var body: some View {
        VStack {
            Text(episode.name)
                .font(.title)
                .foregroundColor(isPlaying ? .green : .black)
            
            Text(episode.track)
                .foregroundColor(.secondary)
            
            PlayButton(isPlaying: $isPlaying)
        }
    }
}

struct PlayButton: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        } ) {
            Text(isPlaying ? "Pause" : "Play")
        }.padding(15)
    }
    
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
