//
//  MainView.swift
//  MealLog
//
//  Created by 홍창남 on 2020/05/31.
//  Copyright © 2020 hcn1519. All rights reserved.
//

import Foundation
import SwiftUI

struct MainView: View {

    @EnvironmentObject var viewModel: MainViewModel

    var body: some View {
        NavigationView {
            List {
                Section(header:
                    VStack {
                        HStack {
                            Text("오늘")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color(UIColor.label))
                            Spacer()
                        }
                        Spacer(minLength: 4)
                        HStack(spacing: 4) {
                            TagView(viewModel: TagViewModel())
                            TagView(viewModel: TagViewModel())
                            TagView(viewModel: TagViewModel())
                            Spacer()
                        }
                        Spacer(minLength: 4)
                    }.listRowInsets(EdgeInsets(
                        top: 24,
                        leading: 24,
                        bottom: 0,
                        trailing: 24))
                ) {
                    VStack {
                        Text("content")
                    }
                }
                .listRowBackground(Color.yellow)

                Section(header: Text("Section1")) {
                    Text("Section2")
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("식단 기록", displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                self.viewModel.addMealIsPresented.toggle()
            }, label: {
                Image(systemName: "plus.circle")
                    .font(.system(size: 24, weight: .light))
            })).sheet(isPresented: $viewModel.addMealIsPresented) {
                AddMealView()
            }
        }
    }
}

struct MainViewPreviews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView().environmentObject(MainViewModel())
                .previewLayout(.fixed(width: 320, height: 400))
                .environment(\.colorScheme, .dark)
            MainView().environmentObject(MainViewModel())
                .previewLayout(.fixed(width: 375, height: 400))
                .environment(\.colorScheme, .dark)
            MainView().environmentObject(MainViewModel())
                .previewLayout(.fixed(width: 375, height: 400))
                .environment(\.colorScheme, .light)
        }
    }
}
