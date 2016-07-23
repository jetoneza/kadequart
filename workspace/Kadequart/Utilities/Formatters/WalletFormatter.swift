//
//  WalletFormatter.swift
//  Kadequart
//
//  Created by Jethro Ordaneza on 23/07/2016.
//  Copyright © 2016 Kokel Mekong. All rights reserved.
//

import Foundation

public struct WalletFormatter {
  var wallet = Wallet()

  func getBalance() -> Double {
    return wallet.cashOnHand + wallet.bankAccountBalance
  }

  func getFormattedBalance() -> String {
    let balance = self.getBalance()
    return Formatter.formatBalanceValue(balance)
  }

  func getFormattedCashOnHand() -> String {
    let balance = wallet.cashOnHand
    return Formatter.formatBalanceValue(balance)
  }

  func getFormattedBankAccountBalance() -> String {
    let balance = wallet.bankAccountBalance
    return Formatter.formatBalanceValue(balance)
  }
}