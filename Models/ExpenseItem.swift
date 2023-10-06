//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Dennis Mutwiri Mugambi on 06/10/2023.
//

import Foundation

struct ExpenseItem : Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
