import UIKit

final class HomeViewController:UIViewController{
    
    let homeView = HomeView()
    
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
    }
    
    
    @objc func onButtonPress() {
        pushSecondViewController()
    }
    
    private func pushSecondViewController(){        
        self.definesPresentationContext = true
//        self.providesPresentationContextTransitionStyle = true
        
        self.navigationController?.definesPresentationContext = true
//        self.navigationController?.providesPresentationContextTransitionStyle = true
        
//        let tata = PresentedViewController()
//        let toto = UINavigationController(rootViewController: tata)
//        toto.modalPresentationStyle = .overCurrentContext
        
        
//      present(toto, animated: true)
//        self.navigationController?.present(toto, animated: true)
        
        
        let toto2 = PresentedNavController()
        self.navigationController?.present(toto2, animated: true)
    }
    
    deinit{
        print("DEINIT \(self)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.definesPresentationContext = true

        
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


extension UINavigationController{
    func dismissToto(){
        self.presentingViewController?.dismiss(animated: true)
    }
}
