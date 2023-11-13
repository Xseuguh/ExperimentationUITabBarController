import UIKit

final class PresentedViewController:UIViewController{
    
    let homeView = HomeView2()
    var tabBar: UITabBarController?
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("VIEWDIDLOAD \(self)")
        
        view.addSubview(homeView)
        
        homeView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            homeView.topAnchor.constraint(equalTo: view.topAnchor),
            homeView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            homeView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        homeView.button.addTarget(self, action: #selector(onButtonPress), for: .touchUpInside)
        homeView.toggleTabBar.addTarget(self, action: #selector(onTogglePress), for: .touchUpInside)
        
        tabBar = self.navigationController?.presentingViewController?.tabBarController
    }
    
    
    @objc func onTogglePress() {
        self.navigationController?.presentingViewController?.tabBarController?.tabBar.isHidden = !(self.navigationController?.presentingViewController?.tabBarController?.tabBar.isHidden ?? false)
    }
    
    @objc func onButtonPress() {
        pushSecondViewController()
    }
    
    private func pushSecondViewController(){
//        navigationController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
        navigationController?.presentingViewController?.dismiss(animated: true, completion: {[weak self] in
//            self?.tabBar?.selectedIndex = 0
//            self?.tabBar?.selectedIndex = 2
        })
    }
    
    deinit{
        print("DEINIT \(self)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        print("viewWillAppear \(self)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        print("viewDidAppear \(self)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        
        print("viewWillDisappear \(self)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        
        print("viewDidDisappear \(self)")
    }
}

