//
//  LibraryViewController.swift
//  Multiple_View_Controllers
//
//  Created by Matheus de Sousa Matos on 19/08/21.
//

import UIKit

class LibraryViewController: UIViewController {
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        button.setTitle("Go to Log In", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapbutton), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    //Button in center layout
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }
    
    @objc func didTapbutton(){
        
        guard let vc_login = storyboard?.instantiateViewController(identifier: "login_vc") as? ViewController else{
            return
        }
    
        present(vc_login, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
