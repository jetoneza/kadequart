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

  override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return self.type == .CashOnHand ? "Cash on hand" : "Bank Account Balance"
  }
}
