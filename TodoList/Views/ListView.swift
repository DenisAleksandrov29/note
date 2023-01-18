//
//  ListView.swift
//  TodoList
//
//  Created by Денис Александров on 26.12.2022.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleeteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Заметки")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                VStack {
                NavigationLink("Add", destination: AddView())
//                NavigationLink("Editing", destination: AddView())
                }
        )
    }
    
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(ListViewModel())
    }
}
























