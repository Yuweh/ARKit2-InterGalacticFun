//
//  PlanetCell.swift
//  Intergalactic Fun
//
//  Created by Francis Jemuel Bergonia on 8/23/19.
//  Copyright © 2019 Xi Apps. All rights reserved.
//

import UIKit

class PlanetCell: UITableViewCell {

    @IBOutlet weak var planetImg: UIImageView!
    @IBOutlet weak var planetTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        planetImg.layer.cornerRadius = 10
    }
    
    func configureCell(planet: String) {
        planetTitle.text = planet.capitalized
        planetImg.image = UIImage(named: planet)
    }
}
