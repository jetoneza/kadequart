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

class EditController: UITableViewController, UITextFieldDelegate {
  var type: EditType = .CashOnHand
  var balance: Double = 0
  var wallet: Wallet?

  @IBOutlet var balanceInput: UITextField!
  @IBOutlet var doneButton: UIBarButtonItem!

  override func viewDidLoad() {
    super.viewDidLoad()
    setUpWallet()
    setUpInput()
  }

  func setUpWallet() {
    wallet = App.shared.wallet
    balance = self.type == .CashOnHand ? self.wallet!.cashOnHand : self.wallet!.bankAccountBalance
  }

  func setUpInput() {
    doneButton.enabled = false
    balanceInput.delegate = self
    balanceInput.text = Formatter.formatBalanceValue(balance)
  }

  func textFieldShouldReturn(textField: UITextField) -> Bool {
    balanceInput.resignFirstResponder()
    return true
  }

  func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
    doneButton.enabled = true
    return true
  }

  override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return self.type == .CashOnHand ? "Cash on hand" : "Bank Account Balance"
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if doneButton === sender {
      balance = Double(balanceInput.text!) ?? balance

      if self.type == .CashOnHand {
        wallet!.cashOnHand = balance
      } else {
        wallet!.bankAccountBalance = balance
      }
    }
  }
}
