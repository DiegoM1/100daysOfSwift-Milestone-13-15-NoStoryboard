//
//  CountryTableViewController.swift
//  Mileston13-15-NoStoryBoard
//
//  Created by Diego Sebastián Monteagudo Díaz on 10/20/20.
//

import UIKit

class CountryTableViewController: UITableViewController {
    
    var countries: [CountryDetails] = [CountryDetails]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        let decode = CountryDecodeClass()
        
        guard let data = decode.getData() else { return }
        
        countries = data
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell()
        cell.textLabel?.text  = countries[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = countries[indexPath.row]
        
        let vc = CountryDetailsViewController()
        vc.country = data
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
