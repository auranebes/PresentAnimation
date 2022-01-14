//
//  ViewController.swift
//  PresentAnimation
//
//  Created by Arslan Abdullaev on 12.01.2022.
//

import Spring
import CoreGraphics

class MainViewController: UIViewController {
// MARK: - Outlets
    @IBOutlet weak var viewAnimated: SpringView!
    @IBOutlet weak var textAnimation: UILabel!
    
    
    @IBOutlet weak var animationButton: SpringButton!
// MARK: - Properties
    private var animation = Animation.getRandomAnimation()
    var buttonPressed = false
// MARK: - View
    override func viewDidLoad() {
        super.viewDidLoad()
        textAnimation.text = animation.description
        animationButton.setTitle("Играть", for: .normal)
        
        if !buttonPressed {
            animationButton.animation = "pop"
            animationButton.force = 1
            animationButton.duration = 3
            animationButton.delay = 0.2
            animationButton.animate()
        }
    }
// MARK: - View Actions
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        buttonPressed = true
        textAnimation.text = animation.description
        
        viewAnimated.animation = animation.name
        viewAnimated.force = animation.force
        viewAnimated.duration = animation.duration
        viewAnimated.delay = animation.delay
        viewAnimated.curve = animation.curve
        viewAnimated.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Открыть \(animation.name)", for: .normal)
        sender.animation = "pop"
        sender.force = 1
        sender.animate()
        
        }
    }
 // MARK: - Methods

    
