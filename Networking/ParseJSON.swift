//
//  ParseJson.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/12.
//

import Foundation

struct JSONFileReader {
    static func readLocalJsonFile(forFileName name: String) -> Data? {
        do {
            guard let bundlePath = Bundle.main.path(forResource: name, ofType: "json"),
                  let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8)
            else { return nil }
            
            return jsonData
        } catch {
            print(error)
        }
        
        return nil
    }
}

func parse(jsonData: Data) {
    do {
        let decodedData = try JSONDecoder().decode(Cards.self, from: jsonData)
        print(decodedData.cards![0].name!)
        print(decodedData.cards![0].img_url!)
    } catch {
        print("decode error")
    }
}
