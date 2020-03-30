
import Foundation
import SwiftUI

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let price: String
    let imageURL: String
}

extension Dish {
    static func all() -> [Dish] {
        return [
            Dish(name: "Dish 1", price: "10", imageURL: "e1"),
            Dish(name: "Dish 2", price: "15", imageURL: "e2"),
            Dish(name: "Dish 3", price: "20", imageURL: "e3"),
            Dish(name: "Dish 4", price: "30", imageURL: "e1"),
            Dish(name: "Dish 5", price: "40", imageURL: "e2"),
            Dish(name: "Dish 6", price: "16", imageURL: "e1"),
            Dish(name: "Dish 7", price: "12", imageURL: "e3")
        ]
    }
}
