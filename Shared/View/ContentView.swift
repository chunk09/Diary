//
//  ContentView.swift
//  Shared
//
//  Created by HelloUser on 2022/07/13.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var name: String = ""
    @State private var showNew = false
    
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        VStack {
            NavigationView {
                List {
                    NavigationLink(destination: Text("Hello world")) {
                        Text("샌즈")
                    }
                }
                .background(
                    NavigationLink(destination: WriteView(), isActive: $showNew) {
                        EmptyView()
                    })
                .navigationTitle("내 일기장")
                .toolbar {
                    ToolbarItem {
                        Button("추가") {
                            self.showNew = true
                        }
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
