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

extension TarotRepository {
    func loadCardImage() -> UIImage {
        let cardImageView = UIImageView()
        let url = TarotRepository.init().tarotRepository?.cards?[0].img_url
        
        cardImageView.kf.setImage(with :url)
        
        return cardImageView.image!
    }
}
