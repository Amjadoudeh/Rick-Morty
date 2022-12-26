import Foundation

/// Represents unique API endpoints
@frozen enum RMEndpoint: String {
    /// Endpoint to get Character info
    case character
    /// Endpoint to get Location info
    case location
    /// Endpoint to get Episode info
    case episode
}
