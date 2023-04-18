//
//  UserListView.swift
//  instagramClone
//
//  Created by 蔡相襄 on 2023/2/6.
//

import SwiftUI

struct UserListView: View {
    @ObservedObject var viewModel = SearchViewModel()
    @Binding var searchText: String
    
    var users: [User] {
        return searchText.isEmpty ? viewModel.users : viewModel.filteredUsers(searchText)
    }
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(users) { user in
                    NavigationLink(destination: LazyView(ProfileView(user: user)), label: {
                        UserCell(user: user)
                        .padding(.leading)
                    })
                    
                }
            }
        }
    }
}


