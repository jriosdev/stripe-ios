//
//  STPCollectBankAccountParams.swift
//  StripeiOS
//
//
//  Copyright © 2022 Stripe, Inc. All rights reserved.
//

import Foundation

public class STPCollectBankAccountParams: NSObject {
    internal let paymentMethodParams: STPPaymentMethodParams

    internal init(paymentMethodParams: STPPaymentMethodParams) {
        self.paymentMethodParams = paymentMethodParams
    }

    @objc public class func collectUSBankAccountParamsWith(name: String, email: String?) -> STPCollectBankAccountParams {
        let billingDetails = STPPaymentMethodBillingDetails()
        billingDetails.name = name
        billingDetails.email = email

        let paymentMethodParams = STPPaymentMethodParams()
        paymentMethodParams.billingDetails = billingDetails
        paymentMethodParams.type = .USBankAccount
        return STPCollectBankAccountParams(paymentMethodParams: paymentMethodParams)
    }
}
