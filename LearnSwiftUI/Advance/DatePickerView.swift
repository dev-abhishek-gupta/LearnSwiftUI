//
//  DatePickerView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use DatePicker in SwiftUI for selecting dates.
struct DatePickerView: View {
    // State variable for the selected date
    @State var selectedDate = Date.now
    
    var body: some View {
        NavigationStack {
            // DatePicker with a date range and hidden label
            DatePicker("Select Date", selection: $selectedDate, in: Date.now...threeMonthsFromNow, displayedComponents: .date)
                .labelsHidden()
                .padding()
        }
    }
    
    /// Computed property for a date three months from now
    var threeMonthsFromNow: Date {
        Calendar.current.date(byAdding: .month, value: 3, to: Date.now)!
    }
}

#Preview {
    DatePickerView()
}
