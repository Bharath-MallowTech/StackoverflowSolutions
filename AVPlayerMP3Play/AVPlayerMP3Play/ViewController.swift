//
//  ViewController.swift
//  AVPlayerMP3Play
//
//  Created by Bharath R on 27/09/17.
//  Copyright © 2017 Bharath R. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        test()
    }
    
    func test() {
        let avPlayerVC = AVPlayerViewController()
        let url = URL(string: "https://transom.org/wp-content/uploads/2004/03/stereo_40kbps.mp3?_=7")!
        let asset = AVURLAsset(url: url)
        let item = AVPlayerItem(asset: asset)
        let player = AVPlayer(playerItem: item)
        avPlayerVC.player = player
        
        present(avPlayerVC, animated: true) {
            player.play()
        }
    }

}

