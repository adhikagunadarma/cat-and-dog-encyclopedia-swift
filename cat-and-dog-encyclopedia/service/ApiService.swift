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
import Firebase
import CodableFirebase


class ApiService{
    
    private static let db = Firestore.firestore()
    static var listDogs : [Dog] = []
    static var listCats : [Cat] = []
    
    static func loadDataListDog(){
        self.db.collection("dogs").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    let dog = try! FirestoreDecoder().decode(Dog.self, from: document.data())
                    self.listDogs.append(dog)
                }
            }
        }
    }
    
    static func loadDataListCat(){
        self.db.collection("cats").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    let cat = try! FirestoreDecoder().decode(Cat.self, from: document.data())
                    self.listCats.append(cat)
                }
            }
        }
    }
    
    
    
}
