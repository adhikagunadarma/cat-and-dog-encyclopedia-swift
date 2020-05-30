//
//  ListViewCell.swift
//  cat-and-dog-encyclopedia
//
//  Created by Josephine Fransisca on 17/05/20.
//  Copyright © 2020 Adhika gunadarma. All rights reserved.
//

import UIKit

class ListViewCell: UITableViewCell {
    
    static let cellIdentifier = "AnimalCell"

    @IBOutlet weak var cellMainView: UIView!
    @IBOutlet weak var animalImage: UIImageView!
    
    @IBOutlet weak var animalName: UILabel!
    
//    func configureWithDog(dog: Dog) {
//       countryNameLabel.text = chocolate.countryName
//       emojiLabel.text = "🍫" + chocolate.countryFlagEmoji
//       priceLabel.text = CurrencyFormatter.dollarsFormatter.string(from: chocolate.priceInDollars)
//     }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
