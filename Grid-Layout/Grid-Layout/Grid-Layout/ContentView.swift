
import SwiftUI

struct ContentView: View {
    
    let dishes = Dish.all()
    
    var body: some View {
        let chunckedDishes = dishes.chuncked(into: 2)
        return List {
            // Rows
            ForEach(0..<chunckedDishes.count) { index in
                HStack {
                    //Colums
                    ForEach(chunckedDishes[index]) { dish in
                        Image(dish.imageURL)
                        .resizable()
                        .scaledToFit()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
