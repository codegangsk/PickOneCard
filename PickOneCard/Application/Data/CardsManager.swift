//
//  CardsManager.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/14.
//

import Foundation
import UIKit

struct CardsManager {
    static let shared = CardsManager()
    
    private init() {}
}

extension CardsManager {
    var parsedCards: Cards? {
        let decodedData = JSONFileReader.readLocalJsonFile(forFileName: "tarot-images", for: Cards.self)!
        print(decodedData.cards![0].name!)
        print(decodedData.cards![0].img_url!)
        return decodedData
    }
}
