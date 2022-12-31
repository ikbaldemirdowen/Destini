//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    var story = Story("You see a fork in the road", "Take a left", "Take a right")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = story.stories[0][0]
        choice1Button.setTitle(story.stories[0][1], for: .normal)
        choice2Button.setTitle(story.stories[0][2], for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton)
    {
        if sender.title(for: .normal) == "Choice 1"
        {
            storyLabel.text = story.stories[1][0]
        }
        else
        {
            storyLabel.text = story.stories[2][0]
        }
    }
    
}

