import UIKit

class MyTabBar: UITabBarController, UITabBarControllerDelegate {
    let myTabBarView = MyTabBarView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lineView = UIView(frame: CGRect(x: 0, y: 0, width:tabBar.frame.size.width, height: 1))
        lineView.backgroundColor = UIColor.systemPink
        tabBar.addSubview(lineView)

        setupViewControllers()

        delegate = self
    }

    func setupViewControllers() {
        let vc0 = HomeViewController()
        vc0.tabBarItem.title = "Patients"
        vc0.tabBarItem.image = UIImage(systemName: "circle")

        let vc1 = UIViewController()
        vc1.view.backgroundColor = .cyan
        vc1.tabBarItem.title = "Cyan"
        vc1.tabBarItem.image = UIImage(systemName: "heart")

        let vc2 = UIViewController()
        vc2.view.backgroundColor = .purple
        vc2.tabBarItem.title = "Purple"
        vc2.tabBarItem.image = UIImage(systemName: "star")
        
        let sd = UINavigationController(rootViewController: vc0)
        sd.restorationIdentifier = "HOMENAVCONTROLLER"
        vc0.restorationIdentifier = "VC0"

        setViewControllers(
            [
                UINavigationController(rootViewController: vc1),
                UINavigationController(rootViewController: vc2),
                sd
            ],
            animated: true
        )

        tabBar.tintColor = .black
        tabBar.backgroundColor = .white
    }
    
    func tabBarController(
        _: UITabBarController,
        shouldSelect viewController: UIViewController
    ) -> Bool {
        print("toto*=>", viewController)
        return true
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("toto*SELECT=>", item)

    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("toto*$$$", viewController)
    }
}
