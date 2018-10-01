//
//  ViewController.swift
//  random
//
//  Created by Kyoko Sakuma on 2018/08/03.
//  Copyright © 2018年 Kyoko Sakuma. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    let tapPath = Bundle.main.bundleURL.appendingPathComponent("decision14.mp3")
    
    var tapPlayer = AVAudioPlayer()

    @IBOutlet weak var slot1: UIImageView!
    @IBOutlet weak var slot2: UIImageView!
    @IBOutlet weak var slot3: UIImageView!
    
    var randomNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        soundPlayer(player: &tapPlayer, path: tapPath, count: 0)
        
        randomNumber = Int(arc4random_uniform(3))
        
        if randomNumber == 0{
            slot1.image = UIImage(named:"grinning-face")
        }else if randomNumber == 1{
            slot1.image = UIImage(named:"smiling-face-with-heart")
        }else if randomNumber == 2{
            slot1.image = UIImage(named:"neutral-face")
        }
    }
    
    @IBAction func shuffleAction2(_ sender: Any) {
        soundPlayer(player: &tapPlayer, path: tapPath, count: 0)
        randomNumber = Int(arc4random_uniform(3))
        
        if randomNumber == 0{
            slot2.image = UIImage(named:"grinning-face")
        }else if randomNumber == 1{
            slot2.image = UIImage(named:"smiling-face-with-heart")
        }else if randomNumber == 2{
            slot2.image = UIImage(named:"neutral-face")
        }
    }
    
    @IBAction func shuffleAction3(_ sender: Any) {
        soundPlayer(player: &tapPlayer, path: tapPath, count: 0)
        
        randomNumber = Int(arc4random_uniform(3))
        
        if randomNumber == 0{
            slot3.image = UIImage(named:"grinning-face")
        }else if randomNumber == 1{
            slot3.image = UIImage(named:"smiling-face-with-heart")
        }else if randomNumber == 2{
            slot3.image = UIImage(named:"neutral-face")
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        slot1.image = nil
        slot2.image = nil
        slot3.image = nil
    }
    
    fileprivate func soundPlayer(player:inout AVAudioPlayer , path:URL , count: Int){
        do{
            player = try AVAudioPlayer(contentsOf: path, fileTypeHint: nil)
            player.numberOfLoops = count
            player.play()
        }catch{
            print("エラーが発生しました！")
        }
    }
    
}

