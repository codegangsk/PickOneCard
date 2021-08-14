//
//  ViewController.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/09.
//

import UIKit
import SpriteKit
import Kingfisher

class ViewController: UIViewController {
    let skView = SKView()
    var imageView = UIImageView()
    var cardImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBackground()
        downloadImage(with: (TarotRepository.init().tarotRepository?.cards![0].img_url)!) { [self] image in
            guard image != nil else {return}
            cardImage = image!
        }
    }
}

extension ViewController {
    func loadBackground() {
        let scene = TarotScene(size: CGSize(width: 1024, height: 768))
        self.view = skView
        
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = false
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
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
}

