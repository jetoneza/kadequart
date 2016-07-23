//
//  BackendlessManager+Wallet.swift
//  Kadequart
//
//  Created by Jethro Ordaneza on 23/07/2016.
//  Copyright © 2016 Kokel Mekong. All rights reserved.
//

import Foundation
import PromiseKit

extension BackendlessManager {
  public func getWalletByObjectId(objectId: String) -> Promise<Wallet> {
    return Promise { (fulfill, reject) in
      let dataStore = backendlessInstance.data.of(Wallet.ofClass())

      dataStore.findID(
        objectId,
        response: { result in
          guard let wallet = result as? Wallet else {
            reject(BackendlessError.InvalidTypeForObject(name: "Wallet"))
            return
          }
          fulfill(wallet)
        },
        error: { fault in
          reject(BackendlessError.ReceivedFault(fault))
        }
      )
    }
  }

  public func updateBLWallet(wallet: Wallet) -> Promise<Wallet> {
    return Promise { (fulfill, reject) in
      let dataStore = backendlessInstance.data.of(Wallet.ofClass())
      dataStore.save(
        wallet,
        response: { result in
          guard let wallet = result as? Wallet else {
            reject(BackendlessError.InvalidTypeForObject(name: "Wallet"))
            return
          }

          fulfill(wallet)
        },
        error: { fault in
          reject(BackendlessError.ReceivedFault(fault))
        }
      )
    }
  }
}