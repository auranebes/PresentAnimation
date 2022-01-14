//
//  Model.swift
//  PresentAnimation
//
//  Created by Arslan Abdullaev on 13.01.2022.
//

import Spring

struct Animation {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        Preset: \(name)
        Curve: \(curve)
        Force: \(String(format: "%.02f", force))
        Duration: \(String(format: "%.02f", duration))
        Delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name:DataManager.shared.animations.randomElement()?.rawValue ?? ("zoomIn"),
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? ("easeIn"),
            force: Double.random(in: 0...1.5),
            duration: Double.random(in: 0.5...1.2),
            delay: 0.3
        )
    }
}

