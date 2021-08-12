//
//  Card.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/11.
//

import Foundation

struct Card: Codable, Equatable {
    var name: String?
    var number: String?
    var arcana: String?
    var img_url: URL?
}


