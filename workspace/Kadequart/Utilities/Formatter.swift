//
//  Formatter.swift
//  Kadequart
//
//  Created by Jethro Ordaneza on 23/07/2016.
//  Copyright © 2016 Kokel Mekong. All rights reserved.
//

import Foundation

public struct Formatter {
  public static func formatBalanceValue(balance: Double) -> String {
    let formatter = NSNumberFormatter()

    formatter.numberStyle = .CurrencyStyle
    formatter.currencySymbol = ""

    return formatter.stringFromNumber(balance)!
  }

  public static func walletFormatter(wallet: Wallet) -> WalletFormatter {
    var walletFormatter = WalletFormatter()
    walletFormatter.wallet = wallet

    return walletFormatter
  }
}
