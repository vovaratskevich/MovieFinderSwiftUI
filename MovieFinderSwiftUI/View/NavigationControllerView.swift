//
//  NavigationControllerView.swift
//  MovieFinderSwiftUI
//
//  Created by user on 16.03.2021.
//

import SwiftUI

struct NavigationControllerView: UIViewControllerRepresentable {
    
    func makeCoordinator() -> Coordinator {
        return NavigationControllerView.Coordinator(parent: self)
    }
    
    var view: SearchView
    
    var onSearch: (String) -> ()
    var onCancel: () -> ()
    
    init (view: SearchView, onSearch: @escaping (String) -> (), onCancel: @escaping () -> ()) {
        self.view = view
        self.onSearch = onSearch
        self.onCancel = onCancel
    }
    
    func makeUIViewController(context: Context) -> UINavigationController {
        
        let childView = UIHostingController(rootView: view)
        
        let controller = UINavigationController(rootViewController: childView)
        
        controller.navigationBar.topItem?.title = "Search"
        controller.navigationBar.prefersLargeTitles = true
        
        let searchController = UISearchController ()
        searchController.searchBar.placeholder = "Search"
        
        //setting delegate
        searchController.searchBar.delegate = context.coordinator
        
        //settig searchBar in NavBar
        
        searchController.obscuresBackgroundDuringPresentation = false
        controller.navigationBar.topItem?.searchController = searchController
        controller.navigationBar.topItem?.hidesSearchBarWhenScrolling = false
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        
    }
    
    class Coordinator: NSObject, UISearchBarDelegate {
        
        var parent: NavigationControllerView
        
        init (parent: NavigationControllerView) {
            self.parent = parent
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            //when text changed
            self.parent.onSearch(searchText)
        }
        
        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            //when cancel button will clicked
            self.parent.onCancel()
        }
    }
    
}


