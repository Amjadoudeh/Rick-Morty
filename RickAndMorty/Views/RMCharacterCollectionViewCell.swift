import UIKit

class RMCharacterCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "RMCharacterCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("Not supported")
    }
    
    private func addConstraint() {
        NSLayoutConstraint.activate([
            
        ])
    }
    
    /// preaper the cell to be reusable
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    /// Configure the cell with the viewModel
    public func configure(with viewModel: RMCharacterCollectionViewCellViewModel) {
        
    }
}
