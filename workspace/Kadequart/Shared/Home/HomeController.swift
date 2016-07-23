//
//  HomeController.swift
//  Kadequart
//
//  Created by Jethro Ordaneza on 23/07/2016.
//  Copyright © 2016 Kokel Mekong. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

  @IBOutlet var totalBalanceLabel: UILabel!

  var wallet = Wallet()

  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    setUpWallet()
    setUpViews()
  }

  func setUpWallet() {
    wallet = App.shared.wallet
  }

  func setUpViews() {
    totalBalanceLabel.text? = Formatter.walletFormatter(wallet).getFormattedBalance()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
}
