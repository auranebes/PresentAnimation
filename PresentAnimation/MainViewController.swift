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
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var animationButton: SpringButton!
// MARK: - Properties
    var currentAnimationButton = animationNames.zoomIn
    var buttonPressed = false
// MARK: - View
    override func viewDidLoad() {
        super.viewDidLoad()
        presetLabel.text = "Preset: \(viewAnimated.animation)"
        curveLabel.text = "Curve: \(viewAnimated.curve)"
        forceLabel.text = "Force: "
        durationLabel.text = "Duration: "
        delayLabel.text = "Delay: "
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
        switch currentAnimationButton {
        case .zoomIn:
            viewAnimated.animation = animationNames.zoomIn.rawValue
            viewAnimated.curve = "easeInOut"
            viewAnimated.force = CGFloat.random(in: 0.5...2)
            viewAnimated.duration = CGFloat.random(in: 0.5...1)
            viewAnimated.delay = CGFloat.random(in: 0.1...0.3)
            
            sender.animation = "slideUp"
            sender.force = 1
            sender.duration = 1
            sender.delay = 0
            
            
            presetLabel.text = "Preset: \(viewAnimated.animation)"
            curveLabel.text = "Curve: \(viewAnimated.curve)"
            forceLabel.text = "Force: \(changeLabel(from: viewAnimated.force))"
            durationLabel.text = "Duration: \(changeLabel(from: viewAnimated.duration))"
            delayLabel.text = "Delay: \(changeLabel(from: viewAnimated.delay))"
            sender.setTitle(animationNames.zoomOut.rawValue, for: .normal)
            
            currentAnimationButton = animationNames.zoomOut
            
            sender.animate()
            viewAnimated.animate()
        case .zoomOut:
            viewAnimated.animation = animationNames.zoomOut.rawValue
            viewAnimated.curve = "easeInOut"
            viewAnimated.force = CGFloat.random(in: 0.5...2)
            viewAnimated.duration = CGFloat.random(in: 0.5...1)
            viewAnimated.delay = CGFloat.random(in: 0.1...0.3)
            
            sender.animation = "morph"
            sender.force = 1
            sender.duration = 1
            sender.delay = 0
            
            presetLabel.text = "Preset: \(viewAnimated.animation)"
            curveLabel.text = "Curve: \(viewAnimated.curve)"
            forceLabel.text = "Force: \(changeLabel(from: viewAnimated.force))"
            durationLabel.text = "Duration: \(changeLabel(from: viewAnimated.duration))"
            delayLabel.text = "Delay: \(changeLabel(from: viewAnimated.delay))"
            sender.setTitle(animationNames.fall.rawValue, for: .normal)
            
            currentAnimationButton = animationNames.fall
            
            sender.animate()
            viewAnimated.animate()
            
        case .fall:
            viewAnimated.animation = animationNames.fall.rawValue
            viewAnimated.curve = "easeInOut"
            viewAnimated.force = CGFloat.random(in: 0.5...2)
            viewAnimated.duration = CGFloat.random(in: 0.5...1)
            viewAnimated.delay = CGFloat.random(in: 0.1...0.3)
            
            sender.animation = "morph"
            sender.force = 1
            sender.duration = 1
            sender.delay = 0
            
            presetLabel.text = "Preset: \(viewAnimated.animation)"
            curveLabel.text = "Curve: \(viewAnimated.curve)"
            forceLabel.text = "Force: \(changeLabel(from: viewAnimated.force))"
            durationLabel.text = "Duration: \(changeLabel(from: viewAnimated.duration))"
            delayLabel.text = "Delay: \(changeLabel(from: viewAnimated.delay))"
            sender.setTitle(animationNames.pop.rawValue, for: .normal)
            
            currentAnimationButton = animationNames.pop
            
            sender.animate()
            viewAnimated.animate()
            
        case .pop:
            viewAnimated.animation = animationNames.pop.rawValue
            viewAnimated.curve = "easeInOut"
            viewAnimated.force = CGFloat.random(in: 0.5...2)
            viewAnimated.duration = CGFloat.random(in: 0.5...1)
            viewAnimated.delay = CGFloat.random(in: 0.1...0.3)
            
            sender.animation = "morph"
            sender.force = 1
            sender.duration = 1
            sender.delay = 0
            
            presetLabel.text = "Preset: \(viewAnimated.animation)"
            curveLabel.text = "Curve: \(viewAnimated.curve)"
            forceLabel.text = "Force: \(changeLabel(from: viewAnimated.force))"
            durationLabel.text = "Duration: \(changeLabel(from: viewAnimated.duration))"
            delayLabel.text = "Delay: \(changeLabel(from: viewAnimated.delay))"
            sender.setTitle(animationNames.morph.rawValue, for: .normal)
            
            currentAnimationButton = animationNames.morph
            
            sender.animate()
            viewAnimated.animate()
            
        case .morph:
            viewAnimated.animation = animationNames.morph.rawValue
            viewAnimated.curve = "easeInOut"
            viewAnimated.force = CGFloat.random(in: 0.5...2)
            viewAnimated.duration = CGFloat.random(in: 0.5...1)
            viewAnimated.delay = CGFloat.random(in: 0.1...0.3)
            
            sender.animation = "morph"
            sender.force = 1
            sender.duration = 1
            sender.delay = 0
            
            presetLabel.text = "Preset: \(viewAnimated.animation)"
            curveLabel.text = "Curve: \(viewAnimated.curve)"
            forceLabel.text = "Force: \(changeLabel(from: viewAnimated.force))"
            durationLabel.text = "Duration: \(changeLabel(from: viewAnimated.duration))"
            delayLabel.text = "Delay: \(changeLabel(from: viewAnimated.delay))"
            sender.setTitle(animationNames.squeeze.rawValue, for: .normal)
            
            currentAnimationButton = animationNames.squeeze
            
            sender.animate()
            viewAnimated.animate()
            
        default:
            viewAnimated.animation = animationNames.squeeze.rawValue
            viewAnimated.curve = "easeInOut"
            viewAnimated.force = CGFloat.random(in: 0.5...2)
            viewAnimated.duration = CGFloat.random(in: 0.5...1)
            viewAnimated.delay = CGFloat.random(in: 0.1...0.3)
            
            
            sender.animation = "morph"
            sender.force = 1
            sender.duration = 1
            sender.delay = 0
            
            presetLabel.text = "Preset: \(viewAnimated.animation)"
            curveLabel.text = "Curve: \(viewAnimated.curve)"
            forceLabel.text = "Force: \(changeLabel(from: viewAnimated.force))"
            durationLabel.text = "Duration: \(changeLabel(from: viewAnimated.duration))"
            delayLabel.text = "Delay: \(changeLabel(from: viewAnimated.delay))"
            sender.setTitle(animationNames.zoomIn.rawValue, for: .normal)
            
            currentAnimationButton = animationNames.zoomIn
            
            sender.animate()
            viewAnimated.animate()
        }
    }
}
 // MARK: - Methods
extension UIViewController {
    
    func changeLabel(from property: Double) -> String{
        String(format: "%.1f", property)
    }
}
