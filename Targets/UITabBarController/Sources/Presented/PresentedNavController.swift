import UIKit

final class PresentedNavController:UINavigationController{
    
    let vc = PresentedViewController()
    
    init() {
            super.init(nibName: nil, bundle: nil)
        modalPresentationStyle = .overCurrentContext
//        modalPresentationStyle = .currentContext
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.pushViewController(vc, animated: true)
        
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

