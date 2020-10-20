//
//  CountryDecodeClass.swift
//  Mileston13-15-NoStoryBoard
//
//  Created by Diego Sebastián Monteagudo Díaz on 10/20/20.
//

import Foundation

class CountryDecodeClass {
    
   public func getData() -> [CountryDetails]?{
        if   let path = Bundle.main.path(forResource: "countries", ofType: "json") {
            if let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                return parse(json: data)
            
            }
        }
        return nil
    }
    
    func parse(json:Data) -> [CountryDetails]? {
        let decoder = JSONDecoder()
        
        if let jsonPetitions = try? decoder.decode(CountryDetailsJson.self, from: json) {
            return jsonPetitions.countries
        }
        return nil
    }
}
