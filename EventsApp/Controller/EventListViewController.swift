//
//  EventListViewController.swift
//  EventsApp
//
//  Created by braindamage on 2022/2/27.
//

import UIKit
import CoreData
class EventListViewController: UIViewController {

    private let coreDataManager = CoreDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupViews()
    }
    
    
    private func setupViews() {
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let plusButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(plusBarButtonItemDidTapped(_:)))
        plusButtonItem.tintColor = .primary
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = plusButtonItem
        navigationItem.title = "Events"
    }

    @objc func plusBarButtonItemDidTapped(_ sender: UIBarButtonItem) {
            
    }
}
