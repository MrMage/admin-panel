import FluentMySQL
import Vapor

public final class AdminPanelUser: Codable {
    public var id: Int?
    public var email: String
    public var name: String
    public var title: String?
    public var avatarUrl: String?
    public var password: String
    public var passwordChangeCount: Int
    public var shouldResetPassword: Bool

    public static let createdAtKey = \AdminPanelUser.createdAt
    public static let updatedAtKey = \AdminPanelUser.updatedAt
    public static let deletedAtKey = \AdminPanelUser.deletedAt

    public var createdAt: Date?
    public var updatedAt: Date?
    public var deletedAt: Date?

    public init(
        id: Int? = nil,
        email: String,
        name: String,
        title: String? = nil,
        avatarUrl: String? = nil,
        password: String,
        passwordChangeCount: Int = 0,
        shouldResetPassword: Bool = false
    ) throws {
        self.id = id
        self.email = email
        self.name = name
        self.title = title
        self.avatarUrl = avatarUrl
        self.password = password
        self.passwordChangeCount = passwordChangeCount
        self.shouldResetPassword = shouldResetPassword
    }
}

extension AdminPanelUser: Content {}
extension AdminPanelUser: Migration {}
extension AdminPanelUser: MySQLModel {}
extension AdminPanelUser: Parameter {}