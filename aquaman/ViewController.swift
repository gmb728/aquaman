//
//  ViewController.swift
//  aquaman
//
//  Created by Chang Sophia on 12/14/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player : AVPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    
        if let url = Bundle.main.url(forResource: "bubble-sound", withExtension: "mp4") {
            player = AVPlayer(url: url)
            player?.play()

        let bubbleEmitterCell = CAEmitterCell()
        bubbleEmitterCell.contents = UIImage(named: "ffff-bubbles")?.cgImage
        bubbleEmitterCell.birthRate = 10
        bubbleEmitterCell.lifetime = 60
        bubbleEmitterCell.velocity = 10
        bubbleEmitterCell.velocityRange = 200
        bubbleEmitterCell.emissionRange = (45 * .pi/180)
        bubbleEmitterCell.scale = 0.3
        bubbleEmitterCell.scaleRange = 0.6
        bubbleEmitterCell.spin = 0.5
        bubbleEmitterCell.spinRange = 1
        
        
        let emitterLayer = CAEmitterLayer()
        emitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: 736)
        emitterLayer.emitterShape = CAEmitterLayerEmitterShape.line
        emitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 5)
        emitterLayer.emitterCells = [bubbleEmitterCell]
        
        view.layer.addSublayer(emitterLayer)
        
        let sharkEmitterCell = CAEmitterCell()
        
        sharkEmitterCell.contents = UIImage(named: "shark")?.cgImage
        
        sharkEmitterCell.birthRate = 10
        sharkEmitterCell.lifetime = 60
        sharkEmitterCell.velocity = 60
        sharkEmitterCell.velocityRange = 200
        sharkEmitterCell.xAcceleration = 50
        sharkEmitterCell.emissionRange = (60 * .pi/180)
        sharkEmitterCell.scale = 0.7
        sharkEmitterCell.scaleRange = 1
       
        
        
        let sharkemitterLayer = CAEmitterLayer()
        sharkemitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: 600)
        sharkemitterLayer.emitterShape = CAEmitterLayerEmitterShape.line
        sharkemitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 3)
        sharkemitterLayer.emitterCells = [sharkEmitterCell]
        
        view.layer.addSublayer(sharkemitterLayer)
        

        // Do any additional setup after loading the view, typically from a nib.
    }


}

}
