//
//  Wallet.swift
//  Kadequart
//
//  Created by Jethro Ordaneza on 23/07/2016.
//  Copyright © 2016 Kokel Mekong. All rights reserved.
//

import Foundation

public final class Wallet: NSObject, Entity {
  public var objectId: String!
  var cashOnHand: Double!
  var bankAccountBalance: Double!

  override init() {
    self.cashOnHand = 0
    self.bankAccountBalance = 0
  }

  init(cashOnHand: Double, bankAccountBalance: Double) {
    self.cashOnHand = cashOnHand ?? 0
    self.bankAccountBalance = bankAccountBalance ?? 0
  }

  func getBalance() -> Double {
    return self.cashOnHand + self.bankAccountBalance
  }

  func getFormattedBalance() -> String {
    let balance = self.getBalance()
    let formatter = NSNumberFormatter()

    formatter.numberStyle = .CurrencyStyle
    formatter.currencySymbol = ""

    return formatter.stringFromNumber(balance)!
  }
}
