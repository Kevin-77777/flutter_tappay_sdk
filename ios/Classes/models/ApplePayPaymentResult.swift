//
//  ApplePayPaymentResult.swift
//  flutter_tappay_sdk
//
//  Created by Kent C on 2023/12/13.
//

struct ApplePayPaymentResult {
  var success: Bool
  var status: Int?
  var message: String
  var prime: String
  var email: String?
  var phone: String?
  var name: String?
  
  init(success: Bool, status: Int?, message: String?, prime: String?,email: String? = nil,phone: String? = nil,name: String? = nil) {
    self.success = success
    self.status = status
    self.message = message ?? ""
    self.prime = prime ?? ""
    self.email = email
    self.phone = phone
    self.name = name
  }
  
  func toDictionary() -> [String: Any?] {
    let result: [String: Any?] = ["success": success, "status": status, "message": message, "prime": prime,"name": name,"email": email,"phone": phone]
    return result
  }
}
