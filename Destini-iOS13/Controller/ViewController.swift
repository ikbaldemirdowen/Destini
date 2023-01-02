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
    
    var storyBrain = StoryBrain()
    var questionNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.stories[questionNumber].title
        choice1Button.setTitle(storyBrain.stories[questionNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[questionNumber].choice2, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton)
    {
        storyBrain.questionNumber += 1
        if sender.currentTitle! == "Take a left."
        {
            storyLabel.text = storyBrain.stories[1].title
        }
        else if sender.currentTitle! == "Take a right."
        {
            storyLabel.text = storyBrain.stories[2].title
        }
    }
}


