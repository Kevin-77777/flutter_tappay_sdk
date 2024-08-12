//
//  PendingItem.swift
//  flutter_tappay_sdk
//
//  Created by Kevin Zhang on 2024/8/8.
//

struct PendingItem {
  var name: String
  
  init(name: String) {
    self.name = name
  }
  
  func toDictionary() -> [String: Any] {
    return [
      "name": name    ]
  }
  
  static func fromDictionary(_ dictionary: [String: Any]) -> PendingItem? {
    guard let name = dictionary["name"] as? String else {
      return nil
    }
    
      return PendingItem(name: name)
  }
}
