import UIKit

/// View to handle showing the Character and loader

final class CharacterListView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("not supported")
    }
    
}
