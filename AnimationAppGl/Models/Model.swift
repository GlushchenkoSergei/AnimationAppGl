//
//  File.swift
//  AnimationAppGl
//
//  Created by mac on 20.04.2022.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimations() -> Animation {
        let animation = Animation(preset: DataManage.shared.presets.randomElement() ?? "",
                                  curve: DataManage.shared.curves.randomElement() ?? "",
                                  force: Double.random(in: DataManage.shared.forces),
                                  duration: Double.random(in: DataManage.shared.durations),
                                  delay: Double.random(in: DataManage.shared.delays))
        return animation
    }
}





