//
//  RegiftErrorEnum.swift
//  
//
//  Created by Gabrielle Miller-Messner on 4/14/16.
//
//

import Foundation

// Errors thrown by Regift
public enum RegiftError: Int, ErrorType {
    case DestinationNotFound = 97
    case AddFrameToDestination = 98
    case DestinationFinalize = 99
}
