import Foundation

struct AdventureChoice {
    let title: String
    let result: String
    let nextStep: Int?
}

class AdventureModel {

    var currentStep = 1

    func getChoices(for step: Int) -> [AdventureChoice] {

        switch step {

        case 1:
            return [
                AdventureChoice(title: "Enter the Jungle", result: "You enter the jungle.", nextStep: 2),
                AdventureChoice(title: "Walk Along the Beach", result: "You follow the shoreline.", nextStep: 3)
            ]

        case 2:
            return [
                AdventureChoice(title: "Climb a Tree", result: "You see a hidden cave.", nextStep: 4),
                AdventureChoice(title: "Follow Animal Tracks", result: "You get lost.", nextStep: nil)
            ]

        case 3:
            return [
                AdventureChoice(title: "Swim to a Boat", result: "A storm arrives.", nextStep: nil),
                AdventureChoice(title: "Explore a Cave", result: "You discover an ancient map.", nextStep: 4)
            ]

        case 4:
            return [
                AdventureChoice(title: "Open the Treasure Chest", result: "You found the treasure! 🏆", nextStep: nil),
                AdventureChoice(title: "Leave the Chest Alone", result: "You leave safely but without treasure.", nextStep: nil)
            ]

        default:
            return []
        }
    }
}