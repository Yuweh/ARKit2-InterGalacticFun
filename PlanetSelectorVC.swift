//
//  PlanetSelectorVC.swift
//  Intergalactic Fun
//
//  Created by Francis Jemuel Bergonia on 8/23/19.
//  Copyright © 2019 Xi Apps. All rights reserved.
//

import UIKit

class PlanetSelectorVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    var planets = ["sun", "mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus",
                   "neptune", "earth-night", "moon"]
    var planetToPass: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath) as? PlanetCell {
            cell.configureCell(planet: planets[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        planetToPass = planets[indexPath.row]
        performSegue(withIdentifier: "toPlanet", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let planetVC = segue.destination as? PlanetViewerVC {
            planetVC.planetName = planetToPass
        }
    }
}
