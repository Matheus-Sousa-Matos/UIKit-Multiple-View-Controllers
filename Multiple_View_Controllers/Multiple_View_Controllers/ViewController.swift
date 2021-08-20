//
//  ViewController.swift
//  Multiple_View_Controllers
//
//  Created by Matheus de Sousa Matos on 19/08/21.
//

import UIKit

class ViewController: UIViewController {

    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        button.setTitle("Go to Home", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapbutton), for: .touchUpInside)
    }

    //Button in center layout
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }
    
    
    @objc func didTapbutton(){
        
        //Using storyboard
        guard let vc_home = storyboard?.instantiateViewController(identifier: "home_vc") as? HomeViewController else{
            return
        }
        
        //Storyboard in navigationController
        //let vc1 = UINavigationController(rootViewController: storyboard?.instantiateViewController(identifier: "home_vc") as! HomeViewController)
        
        //Using code
        //let vc1 = UINavigationController(rootViewController: FirstViewController())
        //let vc2 = UINavigationController(rootViewController: SecondViewController())
        //let vc3 = UINavigationController(rootViewController: ThirdViewController())
        
        
        present(vc_home, animated: true, completion: nil)
    }

}

//Class using for code method
/*
class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemOrange.cgColor, UIColor.systemRed.cgColor]
        view.layer.addSublayer(gradientLayer)
        
        //view.backgroundColor = .red
        //Title here for show the title in Top Windown
        self.title = "Home"
    }
}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        self.title = "Search"
    }
}

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        self.title = "Library"
    }
}
*/
