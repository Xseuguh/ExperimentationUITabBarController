import UIKit

class HomeView2: UIView{
    
    let stackView = UIStackView()
    let label = UILabel()
    let button = UIButton()
    let toggleTabBar = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .yellow.withAlphaComponent(0.4)
        
        setupLabel()
        setupButton()
        setupToggle()
        setupStackView([
            label,
            button,
            toggleTabBar
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
    
    func setupButton() {
        button.configuration = .plain()
        button.configuration?.contentInsets = NSDirectionalEdgeInsets(
            top: 8,
            leading: 16,
            bottom: 8,
            trailing: 16
        )
        button.tintColor = .white
        
        button.setTitle("Dismiss", for: .normal)
        
        button.backgroundColor = .magenta
        button.layer.cornerRadius = 16
    }
    
    func setupToggle() {
        toggleTabBar.configuration = .plain()
        toggleTabBar.configuration?.contentInsets = NSDirectionalEdgeInsets(
            top: 8,
            leading: 16,
            bottom: 8,
            trailing: 16
        )
        toggleTabBar.tintColor = .white
        
        toggleTabBar.setTitle("Hide/Show tab bar", for: .normal)
        
        toggleTabBar.backgroundColor = .blue
        toggleTabBar.layer.cornerRadius = 16
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
