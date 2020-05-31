//
//  AddMealView.swift
//  MealLog
//
//  Created by 홍창남 on 2020/06/01.
//  Copyright © 2020 hcn1519. All rights reserved.
//

import Foundation
import SwiftUI

struct AddMealView: View {
    var body: some View {
        Form {
            Text("Add Meal View")
        }
    }
}
struct AddMealViewPreviews: PreviewProvider {
    static var previews: some View {
        Group {
            AddMealView().previewLayout(.fixed(width: 320, height: 400))
                .environment(\.colorScheme, .dark)
            AddMealView().previewLayout(.fixed(width: 375, height: 400))
                .environment(\.colorScheme, .dark)
            AddMealView().previewLayout(.fixed(width: 375, height: 400))
                .environment(\.colorScheme, .light)
        }
    }
}
