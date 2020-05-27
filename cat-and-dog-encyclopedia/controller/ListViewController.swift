//
//  ListViewController.swift
//  cat-and-dog-encyclopedia
//
//  Created by Josephine Fransisca on 17/05/20.
//  Copyright © 2020 Adhika gunadarma. All rights reserved.
//

import UIKit
import Firebase

class ListViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var listTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadDataDog()
        // Do any additional setup after loading the view.
    }
    
    func loadDataDog(){

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
