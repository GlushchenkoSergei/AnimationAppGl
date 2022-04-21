//
//  Data.swift
//  AnimationAppGl
//
//  Created by mac on 20.04.2022.
//

import Foundation

class DataManage {
    static let shared = DataManage()
    let presets: [String] = [
    "shake",
    "flipX",
    "flipY",
    "slideLeft",
    "slideRight",
    "slideDown",
    "slideUp",
    "fadeIn",
    "zoomIn",
    "pop",
    "morph",
    "wobble",
    "swing"
    ]
    
    let curves = [
    "spring",
    "linear",
    "easeIn",
    "easeOut",
    "easeInOut"
    ]
    
    let forces = 0.1...1.5 // сила
    let durations = 0.5...2 //Продолжительность
    let delays = 0.1...0.3 // задержка
    
    private init() {
        
    }
}
