//
//  Etensions.swift
//  instagramClone
//
//  Created by 蔡相襄 on 2023/2/6.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
