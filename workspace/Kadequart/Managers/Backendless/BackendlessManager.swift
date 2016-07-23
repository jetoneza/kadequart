//
//  BackendlessManager.swift
//  Kadequart
//
//  Created by Jethro Ordaneza on 23/07/2016.
//  Copyright © 2016 Kokel Mekong. All rights reserved.
//

import Foundation

public enum BackendlessError: ErrorType {
  case InvalidTypeForObject(name: String)
  case ReceivedFault(Fault)
}

public class BackendlessManager {
  let appId = "D0C499AB-86FC-DBA3-FFC2-AD98907D3400"
  let secretKey = "400EA55E-2A8F-E8BC-FFFC-BAF4C64E7E00"
  let version = "v1"

  public var backendlessInstance = Backendless.sharedInstance()

  // Sets the Backendless app
  public func configure() {
    backendlessInstance.initApp(appId, secret: secretKey, version: version)
    
    backendlessInstance.persistenceService.mapTableToClass("Wallets", type: Wallet.ofClass())
  }
}