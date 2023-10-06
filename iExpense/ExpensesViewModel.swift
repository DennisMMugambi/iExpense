//
//  ExpensesViewModel.swift
//  iExpense
//
//  Created by Dennis Mutwiri Mugambi on 06/10/2023.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodeItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
                items = decodeItems
                return
            }
        }
        
        items = []
    }
}
