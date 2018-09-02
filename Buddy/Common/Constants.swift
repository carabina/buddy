import Foundation

struct Constants {
    struct URL {
        static let httpMethod = "GET"
        static let authHeader = "Authorization"
        static let authHeaderValue = "Bearer"
        static let apps = "apps"
        static let builds = "builds"
        static let status = "status"
        static let statusSuccess = "success"
        static let limit = "limit"
        static let limitValue = 10
    }
    
    struct Error {
        static let responseError = "An error has occurred"
        static let noData = "No data fetched"
        static let wrongUrl = "Unexpected URL creation exception"
    }
}
