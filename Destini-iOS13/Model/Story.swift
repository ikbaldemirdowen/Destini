//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story
{
    var title : String
    var choice1 : String
    var choice2 : String
    
    let stories = [
        ["You see a fork in the road.", "Take a left.", "Take a right."],
        ["You see a tiger.", "Take a left.", "Take a right."],
        ["You find a treasure chest.", "Open it.", "Check for traps."]]
    
    init(_ title : String, _ choice1 : String, _ choice2 : String)
    {
        self.title = title
        self.choice2 = choice2
        self.choice1 = choice1
    }
}
