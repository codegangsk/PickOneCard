//
//  TarotRepository.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/14.
//

import Foundation

struct TarotRepository {
    var JSONData = JSONFileReader.readLocalJsonFile(forFileName: "tarot-images")!
    var tarotRepository : ()
    
    init() {
        self.tarotRepository = parse(jsonData: JSONData)
    }
}
