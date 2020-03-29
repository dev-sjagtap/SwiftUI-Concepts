
import SwiftUI

struct ContentView: View {
    
    // Variable declaration
    let hikes = Hike.all()
    
    var body: some View {
        
        // For Navigation
        NavigationView {
            
            List(self.hikes, id: \.name) { hike in
                
                // Kind of data passing from one view to another
                NavigationLink(destination: HikeDetail(hike: hike)) {
                    HikeCell(hike: hike)
                }
                
            }
                
            .navigationBarTitle("Hikings")
        }
    }
    
}

// Extracted View
struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        
        HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f", hike.miles) + " " + "Miles")
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
