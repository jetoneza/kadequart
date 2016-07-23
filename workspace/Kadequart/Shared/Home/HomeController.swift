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

  override func viewDidLoad() {
    super.viewDidLoad()

    // Sample data
    wallet.cashOnHand = 100;
    wallet.bankAccountBalance = 10000
    totalBalanceLabel.text? = wallet.getFormattedBalance()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
}
