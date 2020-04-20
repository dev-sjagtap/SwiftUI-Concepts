
import Foundation
import SwiftUI

struct DishCell: View {
    
    let dish: Dish
    
    var body: some View {
        
            HStack {
                Image(dish.imageURL)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(dish.name)
                    Text(String(format: "$ %.2f", dish.price))
                        .foregroundColor(Color.green)
                }
                
            }.padding(5)
        }
    
}


#if DEBUG
struct DishCell_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            
            // Dark mode
            DishCell(dish: Dish.all()[0]).colorScheme(.dark)
            
            // Different device
            DishCell(dish: Dish.all()[0]).previewDevice("iPhone SE")
            DishCell(dish: Dish.all()[0]).previewDevice("iPhone 8")
            
            // Dyanmic font size
            DishCell(dish: Dish.all()[0]).previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraSmall)
            
            DishCell(dish: Dish.all()[0]).previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .medium)
            
            DishCell(dish: Dish.all()[0]).previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraLarge)
            
            DishCell(dish: Dish.all()[0]).previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraExtraLarge)
            
        }
    }
}
#endif
