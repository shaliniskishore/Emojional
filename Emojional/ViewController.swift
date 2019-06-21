//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["🌵": "cactus", "🌹": "rose"]
    let customMessages = [
        "cactus" : ["Take a break. Listen to yourself.", "Being prickly isn't a flaw, it's a virtue--just be careful who you poke!", "Do the hokey pokey and turn yourself around"],
        "rose" : ["Every rose has its thorns, but don't be afraid to lean on a loved one or two.", "The flower that blooms in adversity is the rarest and most beautiful of all.", "Snoop Dogg is proud of you. Martha Stewart is proud of you."]
]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel!.text!
        
        let random = Int.random(in: 0 ... 2)
        
        let emojiMessage = customMessages[emojis[selectedEmotion]!]?[random]        // if 🌵
        //    return "
        // else if 🌹
        // return
        let alertController = UIAlertController(title: "rose or cactus", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    
}

