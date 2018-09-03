import Foundation

struct AppResponse: Codable {
    let id: String
    let name: String

    private enum CodingKeys : String, CodingKey {
        case id = "_id",
        name = "app_name"
    }
}

struct BuildResponse: Codable {
    let id: String
    let name: String
    let buildNumber: Int
    let date: String?
    let commit: CommitInfoReponse
    let links: LinksResponse
    private let buildStatus: String
    private let tags: [String]?

    var status: BuildStatus {
        return BuildStatus(rawValue: buildStatus) ?? .unknown
    }
    
    var tag: String? {
        return tags?.first
    }

    var download: String? {
        return links.install.first?.url
    }

    private enum CodingKeys : String, CodingKey {
        case id = "_id",
        name = "scheme_name",
        buildNumber = "build_number",
        buildStatus = "build_status",
        date = "finished_at",
        commit = "commit_info",
        links = "links",
        tags = "tags"
    }
}

struct CommitInfoReponse: Codable {
    let author: String
    let branch: String
    let message: String
    let url: String

    private enum CodingKeys : String, CodingKey {
        case author = "author",
        branch = "branch",
        message = "message",
        url = "html_url"
    }
}

struct LinksResponse: Codable {
    let install: [InstallResponse]
}

extension LinksResponse {
    struct InstallResponse: Codable {
        let name: String
        let url: String
    }
}

enum BuildStatus: String {
    case success
    case cancelled
    case running
    case failed
    case unknown
}
