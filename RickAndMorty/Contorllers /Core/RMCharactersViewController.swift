import UIKit

/// Controller to show and search for  characters
final class RMCharactersViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        // Do any additional setup after loading the view.
        
        RMService.shared.execute(.listCharactersRequest,
                                 expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }
        
        
        
//        let request = RMRequst(endpoint: .character,
//                               pathComponents: ["1"],
//                               queryParameters: [
//                                URLQueryItem(name: "name", value: "rick"),
//                                URLQueryItem(name: "status", value: "alive")
//                               ]
//        )
//        print(request.url)
//        
//        RMService.shared.execute(request, expacting: RMCharacters.self) { result in
//            switch result {
//            case .success:
//                break
//            case .failure(let error):
//                print(String(describing: error))
//            }
//        }
    }
}

