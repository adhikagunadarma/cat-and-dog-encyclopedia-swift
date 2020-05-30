//
//  ListViewController.swift
//  cat-and-dog-encyclopedia
//
//  Created by Josephine Fransisca on 17/05/20.
//  Copyright © 2020 Adhika gunadarma. All rights reserved.
//

import UIKit
import Firebase
import RxSwift
import RxCocoa

class ListViewController: UIViewController {
    
    let listOfDogs = Observable.just(ApiService.listDogs)
    private let disposeBag = DisposeBag()
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var listTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupDogCellConfiguration()
        // Do any additional setup after loading the view.
    }
    
    func setupDogCellConfiguration(){
        self.listOfDogs.bind(to: self.listTableView
            .rx
            .items(cellIdentifier: ListViewCell.cellIdentifier,
                   cellType: ListViewCell.self)){
                    row, dog, cell in
                    
                    cell.animalName.text = dog.name
                    
        }.disposed(by: disposeBag)
        
    }
}



