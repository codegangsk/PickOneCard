//
//  TarotRepository.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/14.
//

import Foundation
import UIKit

struct TarotRepository {
    var JSONData = JSONFileReader.readLocalJsonFile(forFileName: "tarot-images")!
    var tarotRepository : Cards?
    
    init() {
        self.tarotRepository = parse(jsonData: JSONData)
    }
}
