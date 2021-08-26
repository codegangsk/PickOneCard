//
//  NetworkService.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/24.
//

import Foundation
import Alamofire

struct NetworkService {
    static let shared = NetworkService()
}

extension NetworkService {
    func call<T: Decodable>(url: String, for cards: T.Type, completion: ((Result<T, Error>) -> Void)? = nil) {
        AF
            .request(url)
            .validate()
            .responseDecodable(of: cards.self) { response in
                if let error = response.error {
                    completion?(.failure(error))
                }
                
                if let cards = response.value {
                    completion?(.success(cards))
                }
                
                completion?(.failure("Unknown Error"))
            }
    }
}

extension String: Error {

}
