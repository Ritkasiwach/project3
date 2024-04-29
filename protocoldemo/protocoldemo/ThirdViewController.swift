//
//  ThirdViewController.swift
//  protocoldemo
//
//  Created by Student on 29/04/24.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image:UIImage(systemName: "circle") , style: .plain, target: self, action: #selector(didTapButton2))
        self.view.backgroundColor = .systemRed
        
        self.navigationItem.title = "Third Controller"
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
        
        // Do any additional setup after loading the view.
    }
    
    @objc private func didTapButton2(){
        let hc = FirstControllerViewController()
        self.navigationController?.popViewController( animated: true)
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
