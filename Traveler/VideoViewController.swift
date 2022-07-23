//
//  VideoViewController.swift
//  Conversion
//
//  Created by 미미밍 on 2021/11/27.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func palyVideo(_ sender: UIButton) {
        let file:String? = Bundle.main.path(forResource: "myVideo1", ofType: "mp4")
        let url = NSURL(fileURLWithPath: file!)
        let playerController = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playerController.player=player
        self.present(playerController, animated: true)
        player.play()
    }
    
}
