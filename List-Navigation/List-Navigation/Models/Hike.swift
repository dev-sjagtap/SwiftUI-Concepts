
import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike] {
        return [
            Hike(name: "Salmonberry Trail", imageURL: "sel", miles: 6),
            Hike(name: "Tom, Dick, and Harry", imageURL: "tom", miles: 5.8),
            Hike(name: "Tamanwas Falls", imageURL: "tam", miles: 5)
        ]
    }
}
