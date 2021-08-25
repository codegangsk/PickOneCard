//
//  CardRepository.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/19.
//

import Foundation
import UIKit
import Alamofire

class CardRepository {
    var cardRepository : [Card] = []
    
    init() {
        fetchCards()
    }
}

extension CardRepository {
    func fetchCards() {
        API.shared.call(url: "https://rws-cards-api.herokuapp.com/api/v1/cards", for: CardsResponse.self) {
             [weak self] response in
             guard let self = self else { return }

             switch response {
             case .success(let cardsResponse):
                 let cards = cardsResponse.cards
                 self.cardRepository = cards!
             case .failure(let error):
                 break
             }
         }
     }
}


