
import Foundation

struct Dish: Identifiable {
    
    let id = UUID()
    let name: String
    let price: Double
    let imageURL: String
    
}

extension Dish {
    static func all() -> [Dish] {
        return [
            Dish(name: "The Hamburger", price: 50.45, imageURL: "d1"),
            Dish(name: "Apple Pie", price: 30, imageURL: "d2"),
            Dish(name: "Hash Browns", price: 20.50, imageURL: "d3"),
            Dish(name: "Tortilla Soup", price: 60, imageURL: "d2"),
            Dish(name: "Hominy Grits", price: 20, imageURL: "d1")
        ]
    }
}
