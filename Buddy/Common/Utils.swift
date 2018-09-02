import Foundation

func performTry(_ function: @escaping (() throws -> Void)) {
    do {
        return try function()
    } catch {
        print("❌ \(error) ❌")
    }
}

extension Int {
    var stringValue: String {
        return String(self)
    }
}
