import Foundation


/// Primary API service object to get Rich and Morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    /// Priviatized constructor
    private init() {
        
    }
    /// Send Rick and Morty API call
    /// - Parameters:
    ///  - request: Request instance
    ///  - type: The type of object we expect to get back
    ///  - completion: callback with data or error 
    public func execute<T: Codable>(
        _ request: RMRequst,
        expacting type: T.Type,
        completion: @escaping (Result<String, Error>) -> Void)
    {
        
    }
}
