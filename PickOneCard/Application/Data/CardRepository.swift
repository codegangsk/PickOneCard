//
//  CardRepository.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/19.
//

import Foundation
import UIKit
import Kingfisher

class CardRepository {
    var cardRepository = UIImage()
    
    init() {
            downloadImage(with: (CardsManager.init().parsedCards?.cards![0].img_url)!) { image in
                guard image != nil else {return}
                self.cardRepository = image!
            }
    }
}

func downloadImage(with urlString : String , imageCompletionHandler: @escaping (UIImage?) -> Void){
        guard let url = URL.init(string: urlString) else {
            return  imageCompletionHandler(nil)
        }
        let resource = ImageResource(downloadURL: url)
        
        KingfisherManager.shared.retrieveImage(with: resource, options: nil, progressBlock: nil) { result in
            switch result {
            case .success(let value):
                imageCompletionHandler(value.image)
            case .failure:
                imageCompletionHandler(nil)
        }
    }
}
