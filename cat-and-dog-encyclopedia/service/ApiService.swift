//
//  ApiService.swift
//  cat-and-dog-encyclopedia
//
//  Created by Josephine Fransisca on 26/05/20.
//  Copyright © 2020 Adhika gunadarma. All rights reserved.
//
import FirebaseFirestore
import Foundation
import RxCocoa

class ApiService{
    
    private let db = Firestore.firestore()
    let dogs: BehaviorRelay<[Dog]> = BehaviorRelay(value: [])
    let cats: BehaviorRelay<[Cat]> = BehaviorRelay(value: [])
    
    
    
    private func loadDataListDog(){
        self.db.collection("dogs").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    self.dogs.value(document)
                    print("\(document.documentID) => \(document.data())")
                }
            }
        }
    }
    
    private func loadDataListCat(){
        self.db.collection("cats").getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    for document in querySnapshot!.documents {
                        print("\(document.documentID) => \(document.data())")
                    }
                }
            }
    }
    
    
    
}
