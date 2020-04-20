
import SwiftUI

struct ContentView: View {
    
    let dishes = Dish.all()
    
    var body: some View {
        
        List {
            ForEach(dishes) { dish in
                DishCell(dish: dish)
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
