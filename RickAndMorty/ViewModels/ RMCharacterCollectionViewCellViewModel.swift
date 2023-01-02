import Foundation


final class RMCharacterCollectionViewCellViewModel {
    private let characterName: String
    private let characterStatus: RMCharacterStatus
    private let characterImageUrl: URL?
    
    init(
        characterName: String,
        characterStatus: RMCharacterStatus,
        characterImageUrl: URL?
    ) {
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterImageUrl = characterImageUrl
        
    }
    
    public var characterStatusText: String {
        return characterStatus.rawValue
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void ) {
        guard let url = characterImageUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data,_ , erorr in
            guard let data = data, erorr == nil else {
                completion(.failure(erorr ?? URLError(.badServerResponse)))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }
}
