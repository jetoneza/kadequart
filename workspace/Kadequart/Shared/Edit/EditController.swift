//
//  EditController.swift
//  Kadequart
//
//  Created by Jethro Ordaneza on 23/07/2016.
//  Copyright © 2016 Kokel Mekong. All rights reserved.
//

import UIKit

public enum EditType {
  case CashOnHand
  case BankAccountBalance
}

class EditController: UITableViewController {
  var type: EditType = .CashOnHand
  var wallet = Wallet()

  @IBOutlet var balanceInput: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()
    setUpWallet()
    setUpInput()
  }

  func setUpWallet() {
    wallet = App.shared.wallet
  }

  func setUpInput() {
    balanceInput.text? = self.type == .CashOnHand ? self.wallet.getFormattedCashOnHand() : self.wallet.getFormattedBankAccountBalance()
  }

  override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return self.type == .CashOnHand ? "Cash on hand" : "Bank Account Balance"
  }
}
