//
//  ViewController.swift
//  Emojional
//
//  Created by Mark Mulrooney on 5/4/21.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    let emojis = [
        "🤠" : "cowboy",
        "😚" : "smiley"
    ]
    
    let customMessages = [
        "cowboy" : ["you're a cowboy like me",
                    "he never wanted love, just a fancy car",
                    "dancing is a dangerous game" ],
        "smiley" : ["all's well that ends well",
                    "darling, I fancy you",
                    "feeling so Gatsby for that whole year"
        ]
    ]
    
    
       @IBAction func showMessage(sender: UIButton) {
           let selectedEmotion = (sender.titleLabel?.text)!
           let options = customMessages[emojis[selectedEmotion]!]!
           let emojiMessage = options.randomElement()
           let alertController = UIAlertController(title: "Alert!", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
           alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
           present(alertController, animated: true, completion: nil)
       }

    
}

