//
//  FirstControllerViewController.swift
//  protocoldemo
//
//  Created by Student on 26/04/24.
//

import UIKit

class FirstControllerViewController: UIViewController,SecondControllerViewControllerDelegate {
    func popValue(value: String) {
        secondField.text = value
    }
    
    
    @IBOutlet weak var secondField: UITextField!
    @IBOutlet weak var firstField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemMint
        
        self.navigationItem.title = "Home Controller"
      
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Button", style: .plain, target: nil, action: nil)
        
        self.navigationItem.rightBarButtonItems = [UIBarButtonItem(image:UIImage(systemName: "star") , style: .plain, target: self, action: #selector(didTapButton)),
                                                   UIBarButtonItem(image:UIImage(systemName: "circle") , style: .plain, target: self, action: #selector(didTapButton2))
                                                ]
        
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image:UIImage(systemName: "star") , style: .plain, target: self, action: #selector(didTapButton))
        self.navigationItem.largeTitleDisplayMode = .never
        
//        navigationController?.navigationBar.barTintColor = UIColor.green
//        tabBarController?.tabBar.barTintColor = UIColor.brown
        tabBarController?.tabBar.tintColor = UIColor.yellow
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.orange]
                    UINavigationBar.appearance().backgroundColor = .green
       
        // Do any additional setup after loading the view.
    }
    @objc private func didTapButton(){
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondControllerViewController") as!  SecondControllerViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapButton2(){
        let hc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "thirdViewController") as!  ThirdViewController
        self.navigationController?.pushViewController(hc, animated: true)
    }
    
    
    @IBAction func firstButtonPressed(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "secondControllerViewController") as! SecondControllerViewController
        controller.firstFieldString = self.firstField.text!
        controller.delegate = self
        self.navigationController?.pushViewController(controller, animated: true)
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
