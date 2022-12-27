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
    ///  - completion: callback with data or error 
    public func execute(_ request: RMRequst, completion: @escaping (Result<String, Error>) -> Void) {
        
    }
}
