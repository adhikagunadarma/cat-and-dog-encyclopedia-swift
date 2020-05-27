//
//  MainViewController.swift
//  cat-and-dog-encyclopedia
//
//  Created by Josephine Fransisca on 17/05/20.
//  Copyright © 2020 Adhika gunadarma. All rights reserved.
//

import UIKit
import Firebase

class MainViewController: UIViewController {
    
    @IBOutlet var cdeBgView: UIView!
    // init and ui func
    @IBOutlet weak var cdeMainView: UIView!
    
    @IBOutlet weak var cdeSubmainView: UIView!
    @IBOutlet weak var cdeLabel: UILabel!
    @IBOutlet weak var dogButton: UIButton!
    @IBOutlet weak var catButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        

    }

    @IBAction func catButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func dogButtonPressed(_ sender: UIButton) {
    }
}

private extension MainViewController {
    // general function
    private func setupUI(){
        
        
        self.cdeMainView.backgroundColor = UIColor(white: 1, alpha: 0.5)
         self.cdeSubmainView.backgroundColor = UIColor(white: 1, alpha: 0)
        self.cdeMainView.layer.cornerRadius = 20
        self.cdeMainView.layer.masksToBounds = true;
        
//        let gradient = CAGradientLayer()
//
//        gradient.frame = self.cdeBgView.bounds
//        gradient.colors = [UIColor.white.cgColor, UIColor.black.cgColor]
//
//        self.cdeBgView.layer.insertSublayer(gradient, at: 0)
    }
}
