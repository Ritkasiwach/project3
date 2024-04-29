//
//  SecondControllerViewController.swift
//  protocoldemo
//
//  Created by Student on 26/04/24.
//

import UIKit

protocol SecondControllerViewControllerDelegate{
    func popValue(value:String)
}

class SecondControllerViewController: UIViewController {
    
    var delegate:SecondControllerViewControllerDelegate?
    var firstFieldString:String = ""
    
    @IBOutlet weak var firstField: UITextField!
    
    @IBOutlet weak var secondField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image:UIImage(systemName: "star") , style: .plain, target: self, action: #selector(didTapButton))
        self.view.backgroundColor = .systemYellow
        
        self.navigationItem.title = "Second Controller"
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
        
        // Do any additional setup after loading the view.
    }
//    @objc private func didTapButton(){
//
//        self.navigationController?.pushViewController(vc, animated: true)
//
//    }
//    @objc private func didTapButton2(){
//        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "firstControllerViewController") as!  FirstControllerViewController
//        self.navigationController?.pushViewController(vc, animated: true)
//    }
    @objc private func didTapButton(){
        let vc = FirstControllerViewController()
        self.navigationController?.popViewController(animated: true)
    }
//    @IBAction func btnBackclicked(_ sender:Any){
//        self.
//    }
//
    @IBAction func secondButtonPressed(_ sender: Any) {
        self.delegate?.popValue(value: secondField.text!)
        self.navigationController?.popViewController(animated: true)
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
