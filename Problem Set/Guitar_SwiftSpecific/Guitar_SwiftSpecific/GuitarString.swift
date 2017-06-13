//
//  GuitarString.swift
//  Guitar
//
//  Created by Gabrielle Miller-Messner on 4/13/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import Cocoa


@objc enum StringError: Int, Error {
    case broken = 98
    case outOfTune = 99
}

class GuitarString:NSObject {
    
    var broke: Bool = false
    var outofTune: Bool = false
    
    func pluck(velocity: Float) throws {
        if broke {
            // can't play a broken string
            throw StringError.broken
        }
        
        if outofTune {
            // you can still play an out of tune string, this is just to illustrate another error type
            throw StringError.outOfTune
        }
        
        // We're playing the string really hard.
        if velocity > 0.8 {
            if arc4random() % 2 == 0 {
                // We knocked the string out of tune. The next time we play, it will sound bad.
                outofTune = true
            }
            
            if arc4random() % 2 == 1 {
                // We broke the string! This sounds bad when it happens, so throw an error right away.
                broke = true
                throw StringError.broken
            }
        }
        
        print("twang 🎶")
    }
}
