//
//  SearchResultsRouter.swift
//  iTunes Finder
//
//  Created by Vladislav Len on 30.12.2020.
//

import UIKit

protocol SearchResultsRouterProtocol {
    init(view: UIViewController)
    func presentAlert(title: String, message: String)
}

final class SearchResultsRouter: SearchResultsRouterProtocol {
    
    // MARK: - Properties
    
    private weak var view: UIViewController?
    
    // MARK: - Initializers
    
    init(view: UIViewController) {
        self.view = view
    }
    
    // MARK: - Methods
    
    // Presents an alert with title and message.
    func presentAlert(title: String, message: String) {
        guard let view = view as? SearchResultsViewController else { return }
        
        let action = UIAlertAction(title: "Done", style: .default)
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(action)
        
        view.present(alertController, animated: true)
    }
    
}
