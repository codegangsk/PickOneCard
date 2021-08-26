//
//  ParseJson.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/12.
//

import Foundation

/*struct JSONFileReader {
    static func readLocalJsonFile<T: Decodable>(forFileName name: String, for type: T.Type) -> T? {
        do {
            guard let bundlePath = Bundle.main.path(forResource: name, ofType: "json"),
                  let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8)
            else { return nil }
                
            let decodedData = try JSONDecoder().decode(type.self, from: jsonData)
            return decodedData
        } catch {
            print(error)
        }
        
        return nil
    }
}
*/
