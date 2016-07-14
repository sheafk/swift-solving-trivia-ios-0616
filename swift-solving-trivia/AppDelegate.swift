//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    //This is a dictionary of States and Capitals.
    var statesAndCapitals = ["Alabama" : "Montgomery",
                             "Alaska" : "Juneau",
                             "Arizona"  : "Phoenix",
                             "Arkansas" : "Little Rock",
                             "California" : "Sacramento",
                             "Colorado" : "Denver",
                             "Connecticut" : "Hartford",
                             "Delaware" : "Dover",
                             "Florida" : "Tallahassee",
                             "Georgia" : "Atlanta",
                             "Hawaii" :  "Honolulu",
                             "Idaho" : "Boise",
                             "Illinois" : "Springfield",
                             "Indiana" : "Indianapolis",
                             "Iowa" : "Des Moines",
                             "Kansas" : "Topeka",
                             "Kentucky" : "Frankfort",
                             "Louisiana" : "Baton Rouge",
                             "Maine" : "Augusta",
                             "Maryland" : "Annapolis",
                             "Massachusetts" : "Boston",
                             "Michigan" : "Lansing",
                             "Minnesota" : "St. Paul",
                             "Mississippi" : "Jackson",
                             "Missouri" : "Jefferson City",
                             "Montana" : "Helena",
                             "Nebraska" :  "Lincoln",
                             "Nevada" : "Carson City",
                             "New Hampshire" : "Concord",
                             "New Jersey" : "Trenton",
                             "New Mexico" : "Santa Fe",
                             "New York" : "Albany",
                             "North Carolina" : "Raleigh",
                             "North Dakota" : "Bismarck",
                             "Ohio" : "Columbus",
                             "Oklahoma" : "Oklahoma City",
                             "Oregon" : "Salem",
                             "Pennsylvania" : "Harrisburg",
                             "Rhode Island" : "Providence",
                             "South Carolina" : "Columbia",
                             "South Dakota" : "Pierre",
                             "Tennessee" : "Nashville",
                             "Texas"  : "Austin",
                             "Utah" : "Salt Lake City",
                             "Vermont" : "Montpelier",
                             "Virginia" : "Richmond",
                             "Washington" : "Olympia",
                             "West Virginia" : "Charleston",
                             "Wisconsin" : "Madison",
                             "Wyoming" : "Cheyenne"]
    
    func solveTrivia(statesAndCapitals: [String : String])-> String { //Here I am declaring a function that takes an argument of a dictionary and returns a string.
        
        var answer = String() //Here I declared an empty string that will eventually be set to the answer.
        for (state, capital) in statesAndCapitals { //This is a loop to iterate over the dictionary. It's like saying "For (key, value) in said dictionary, do this!)
            
            let thisState = state.lowercaseString //Here I am setting a constant with the value being a state in lowercase characters.
            let thisCapital = NSCharacterSet(charactersInString: capital.lowercaseString) //I am setting a constant NSCharacterSet to be equal to all of the characters in a given capital. It is not a string, it is like a group of characters. This is also set to all lowercase characters.
            
            if let _ = thisState.rangeOfCharacterFromSet(thisCapital) {//In this if statement, I am checking to see if the state contains any characters from the capital Set.
                
                print("Not it.") //If there is a match, it prints "Not it."
            } else {
                print("The answer is \(state)") //If there is not a match, we have our answer. I set the answer to a variable String called answer.
                answer = state
            }
        }
        print(answer)
        return answer //This is where I return the answer.
    }

}

