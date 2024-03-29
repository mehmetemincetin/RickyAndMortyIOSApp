//
//  RMCharacterDetailViewController.swift
//  RickyAndMorty
//
//  Created by EMİN ÇETİN on 16.03.2023.
//

import UIKit

/// Controller to show info about single character
final class RMCharacterDetailViewController: UIViewController {
private let viewModel: RMCharacterDetailViewViewModel
    
    init(viewModel: RMCharacterDetailViewViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil,  bundle: nil)
         
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupperted")
    }
    //MARK: -LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = viewModel.title
    }
    

}
 
