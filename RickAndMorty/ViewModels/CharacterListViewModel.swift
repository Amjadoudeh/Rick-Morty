import Foundation

struct CharacterListViewModel {
    func fetchCharacter() {
        RMService.shared.execute(.listCharactersRequest,
                                 expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print(String(model.info.pages))
                print(String(model.results.count))
                print(String(describing: model))
                
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
