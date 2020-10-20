//
//  CountryDetailsViewController.swift
//  Mileston13-15-NoStoryBoard
//
//  Created by Diego Sebastián Monteagudo Díaz on 10/20/20.
//

import UIKit

class CountryDetailsViewController: UIViewController {
    
    var country: CountryDetails?
    let capitalLabel = UILabel()
    let populationLabel = UILabel()
    let sizeLabel = UILabel()
    let capitalText = UILabel()
    let populationText = UILabel()
    let sizeText = UILabel()
    
    override func viewDidLoad() {
        guard let country = country else { return }
        view.translatesAutoresizingMaskIntoConstraints = false
        capitalText.translatesAutoresizingMaskIntoConstraints = false
        capitalLabel.translatesAutoresizingMaskIntoConstraints = false
        populationText.translatesAutoresizingMaskIntoConstraints = false
        populationLabel.translatesAutoresizingMaskIntoConstraints = false
        sizeText.translatesAutoresizingMaskIntoConstraints = false
        sizeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let view = UIView(frame: UIScreen.main.bounds)
        self.view = view
        self.view.backgroundColor = .white
        
        title = country.name
        
        capitalLabel.text = "Capital"
        
        populationLabel.text = "Population"
        
        sizeLabel.text = "Size"
        
        capitalText.text = country.capital
        
        populationText.text = "\(country.population) millions"
      
        sizeText.text = country.size
        
        
        self.view.addSubview(capitalLabel)
        self.view.addSubview(populationLabel)
        self.view.addSubview(sizeLabel)
        self.view.addSubview(capitalText)
        self.view.addSubview(populationText)
        self.view.addSubview(sizeText)
        
        addConstraints()
       
        
    }
    
    func addConstraints () {
        NSLayoutConstraint.activate([
        capitalLabel.leadingAnchor.constraint(equalTo: populationLabel.leadingAnchor),
        capitalText.topAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
        capitalLabel.firstBaselineAnchor.constraint(equalTo: capitalText.firstBaselineAnchor),
        capitalText.centerXAnchor.constraint(equalTo: populationText.centerXAnchor),
        capitalText.leadingAnchor.constraint(equalTo: populationText.leadingAnchor),
        sizeLabel.centerYAnchor.constraint(equalTo: sizeText.centerYAnchor),
        sizeLabel.centerXAnchor.constraint(equalTo: populationLabel.centerXAnchor),
        sizeLabel.leadingAnchor.constraint(equalTo: populationLabel.leadingAnchor),
        sizeText.topAnchor.constraint(equalTo: populationText.bottomAnchor, constant: -91),
        sizeText.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -31.5),
        sizeText.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 50),
        populationLabel.centerYAnchor.constraint(equalTo: populationText.centerYAnchor),
        populationLabel.centerXAnchor.constraint(equalTo: capitalLabel.centerXAnchor),
        populationLabel.leadingAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
        populationText.topAnchor.constraint(equalTo: capitalText.bottomAnchor, constant: 119.5),
        populationText.leadingAnchor.constraint(equalTo: sizeText.leadingAnchor),
        populationText.leadingAnchor.constraint(equalTo: populationLabel.trailingAnchor, constant: 85),
        populationText.centerXAnchor.constraint(greaterThanOrEqualTo: view.centerXAnchor, constant: 80)])
        
    }
    
}
