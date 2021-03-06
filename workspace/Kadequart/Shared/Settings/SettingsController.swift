//
//  SettingsController.swift
//  Kadequart
//
//  Created by Jethro Ordaneza on 23/07/2016.
//  Copyright © 2016 Kokel Mekong. All rights reserved.
//

import UIKit

class SettingsController: UITableViewController {
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let editContoller = segue.destinationViewController as! EditController

    if segue.identifier == "editBankAccountBalance" {
      editContoller.type = .BankAccountBalance
    }
  }

  @IBAction func unwindToSettings(sender: UIStoryboardSegue) {
    if let sourceViewController = sender.sourceViewController as? EditController, wallet = sourceViewController.wallet {
      App.shared.backendlessManager.updateBLWallet(wallet).then { wallet in
        App.shared.wallet = wallet
      }
    }
  }
}
