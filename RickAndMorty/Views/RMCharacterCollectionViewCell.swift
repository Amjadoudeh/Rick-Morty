import UIKit

class RMCharacterCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "RMCharacterCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    //MARK: Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.addSubViews(imageView,nameLabel,statusLabel)
        addConstraint()
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
        /// get ride of the image
        imageView.image = nil
        nameLabel.text = nil
        statusLabel.text = nil
    }
    
    /// Configure the cell with the viewModel
    public func configure(with viewModel: RMCharacterCollectionViewCellViewModel) {
        
    }
}
