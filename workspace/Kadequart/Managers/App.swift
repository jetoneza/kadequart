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
    backendlessManager.configure()

    // Create wallet using backendless.
    // Dirty style for testing purposes.
    // backendlessManager.updateBLWallet(wallet).then({ wallet in
    // self.wallet = wallet
    // })

    // Get wallet
    // Only one wallet for now
    let walletId = "B35A4197-E95E-3F33-FF82-C1DEFF927100"
    backendlessManager.getWalletByObjectId(walletId).then({ [weak self] wallet in
      self?.wallet = wallet
    })
  }
}
