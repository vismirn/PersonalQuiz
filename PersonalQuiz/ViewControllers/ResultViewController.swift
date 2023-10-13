//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 07.08.2023.
//

import UIKit

final class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
//    let vc = showDetailViewController(ResultViewController, sender: <#T##Any?#>)
    
    
    @IBAction func doneBarItem(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}
