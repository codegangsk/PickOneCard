//
//  CardRepository.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/19.
//

import Foundation
import Alamofire
import RxSwift

struct CardRepository {
    let networkService : NetworkService
    let baseUrl = URL(string: "https://rws-cards-api.herokuapp.com/api/v1/cards")!
     
    init(session: NetworkService = NetworkService.shared) {
        self.networkService = session
    }
}

extension CardRepository {
   func fetchCards() -> Observable<CardsResponse> {
        return networkService.call(url: <#T##String#>, for: <#T##Decodable.Protocol#>) {
             [weak self] response in
             guard let self = self else { return }

             switch response {
             case .success(let cardsResponse):
                 let cards = cardsResponse.cards
                 self.cards = cards!
             case .failure(let error):
                print(error)
                 break
             }
         }
     }
}


