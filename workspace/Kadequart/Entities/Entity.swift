//
//  Entity.swift
//  Kadequart
//
//  Created by Jethro Ordaneza on 23/07/2016.
//  Copyright © 2016 Kokel Mekong. All rights reserved.
//

import Foundation

public enum EntityError: ErrorType {
  case InvalidTypeForAttribute(name: String)
  case MissingValueForAttibute(name: String)
}

public protocol Entity: Equatable {
  var objectId: String! { get }
}

public func == <T: Entity>(lhs: T, rhs: T) -> Bool {
  return lhs.objectId == rhs.objectId
}
