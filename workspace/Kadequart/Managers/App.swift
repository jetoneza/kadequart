//
//  App.swift
//  Kadequart
//
//  Created by Jethro Ordaneza on 13/07/2016.
//  Copyright © 2016 Kokel Mekong. All rights reserved.
//

import Foundation

class App {
  static let shared = App()

  lazy var backendlessManager = BackendlessManager()

  var wallet = Wallet()

  func bootstrap() {
    // Sample wallet data
    wallet.bankAccountBalance = 10000
    wallet.cashOnHand = 100

    BackendlessManager.configure()
  }
}
