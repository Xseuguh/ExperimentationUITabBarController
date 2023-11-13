import UIKit

class HomeView: UIView{
    
    let stackView = UIStackView()
    let label = UILabel()
    let button = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .red
        
        setupLabel()
        setupButton()
        setupStackView([
            label,
            button
        ])
        
        displayView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLabel(){
        label.text = "Welcome 🎉"
        label.numberOfLines = 0
        label.textAlignment = .center
    }
    
    func setupButton() {
        button.configuration = .plain()
        button.configuration?.contentInsets = NSDirectionalEdgeInsets(
            top: 8,
            leading: 16,
            bottom: 8,
            trailing: 16
        )
        button.tintColor = .white
        
        button.setTitle("Launch something =>", for: .normal)
        button.setTitle("Let me go!", for: .highlighted)
        
        button.backgroundColor = .magenta
        button.layer.cornerRadius = 16
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
