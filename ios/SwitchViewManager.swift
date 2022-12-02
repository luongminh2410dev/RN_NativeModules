//
//  SwitchViewController.swift
//  rn_native_modules
//
//  Created by Hihi on 01/12/2022.
//
import UIKit

@objc(SwitchViewManager)
class SwitchViewManager : RCTViewManager {
    
  override func view() -> UIView! {
    return SwitchView()
  }
  
  override static func requiresMainQueueSetup() -> Bool {
      return true
  }
}
