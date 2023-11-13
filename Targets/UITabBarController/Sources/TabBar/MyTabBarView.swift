import UIKit

class MyTabBarView: UIView{
    
    let stackView = UIStackView()
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .yellow
        
        setupLabel()
        setupStackView([
            label
        ])
        
        displayView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLabel(){
        label.text = "I am a View of a presented UINavigationController"
        label.numberOfLines = 0
        label.textAlignment = .center
    }
    
    func setupStackView(_ views: [UIView]) {
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 16
        
        views.forEach({stackView.addArrangedSubview($0)})
    }
    
    func displayView(){
        addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalTo: self.widthAnchor),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
