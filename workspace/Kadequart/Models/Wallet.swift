//
//  Wallet.swift
//  Kadequart
//
//  Created by Jethro Ordaneza on 23/07/2016.
//  Copyright © 2016 Kokel Mekong. All rights reserved.
//

import Foundation

protocol Wallet {
  var cashOnHand: Double { get set }
  var bankAccountBalance: Double { get set }
}