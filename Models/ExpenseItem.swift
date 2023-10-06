//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Dennis Mutwiri Mugambi on 06/10/2023.
//

import Foundation

struct ExpenseItem : Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
