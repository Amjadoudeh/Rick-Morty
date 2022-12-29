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
                print(String(model.info.pages))
                print(String(model.results.count))
                print(String(describing: model))
                
            case .failure(let error):
                print(String(describing: error))
            }
        }
        
    }
}

