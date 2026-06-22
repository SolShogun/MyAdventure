import UIKit

class ViewController: UIViewController {

    let adventure = AdventureModel()

    @IBOutlet weak var storyLabel: UILabel!

    @IBOutlet weak var choice1Button: UIButton!

    @IBOutlet weak var choice2Button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateScreen(step: 1)
    }

    func updateScreen(step: Int) {

        adventure.currentStep = step

        switch step {

        case 1:
            storyLabel.text = "You are stranded on a mysterious island. What will you do?"

        case 2:
            storyLabel.text = "You entered the jungle."

        case 3:
            storyLabel.text = "You walk along the beach."

        case 4:
            storyLabel.text = "You discover a hidden treasure cave."

        default:
            break
        }

        let choices = adventure.getChoices(for: step)

        if choices.count > 0 {
            choice1Button.setTitle(choices[0].title, for: .normal)
            choice2Button.setTitle(choices[1].title, for: .normal)

            choice1Button.isHidden = false
            choice2Button.isHidden = false
        }
    }

    @IBAction func choice1Tapped(_ sender: UIButton) {

        let choice = adventure.getChoices(for: adventure.currentStep)[0]

        if let next = choice.nextStep {
            updateScreen(step: next)
        } else {
            showEnding(choice.result)
        }
    }

    @IBAction func choice2Tapped(_ sender: UIButton) {

        let choice = adventure.getChoices(for: adventure.currentStep)[1]

        if let next = choice.nextStep {
            updateScreen(step: next)
        } else {
            showEnding(choice.result)
        }
    }

    func showEnding(_ message: String) {

        storyLabel.text = message

        choice1Button.isHidden = true
        choice2Button.isHidden = true
    }
}import UIKit

class ViewController: UIViewController {

    let adventure = AdventureModel()

    @IBOutlet weak var storyLabel: UILabel!

    @IBOutlet weak var choice1Button: UIButton!

    @IBOutlet weak var choice2Button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateScreen(step: 1)
    }

    func updateScreen(step: Int) {

        adventure.currentStep = step

        switch step {

        case 1:
            storyLabel.text = "You are stranded on a mysterious island. What will you do?"

        case 2:
            storyLabel.text = "You entered the jungle."

        case 3:
            storyLabel.text = "You walk along the beach."

        case 4:
            storyLabel.text = "You discover a hidden treasure cave."

        default:
            break
        }

        let choices = adventure.getChoices(for: step)

        if choices.count > 0 {
            choice1Button.setTitle(choices[0].title, for: .normal)
            choice2Button.setTitle(choices[1].title, for: .normal)

            choice1Button.isHidden = false
            choice2Button.isHidden = false
        }
    }

    @IBAction func choice1Tapped(_ sender: UIButton) {

        let choice = adventure.getChoices(for: adventure.currentStep)[0]

        if let next = choice.nextStep {
            updateScreen(step: next)
        } else {
            showEnding(choice.result)
        }
    }

    @IBAction func choice2Tapped(_ sender: UIButton) {

        let choice = adventure.getChoices(for: adventure.currentStep)[1]

        if let next = choice.nextStep {
            updateScreen(step: next)
        } else {
            showEnding(choice.result)
        }
    }

    func showEnding(_ message: String) {

        storyLabel.text = message

        choice1Button.isHidden = true
        choice2Button.isHidden = true
    }
}