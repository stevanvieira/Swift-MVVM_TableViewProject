//
//  MainViewController.swift
//  MVVMCourse2_Movies
//
//  Created by stevan on 14/12/2023.
//

import UIKit

class MainViewController: UIViewController {
    //IBOutlets:
    //Now the connection between our IBOutfit and our Table View is done:
    @IBOutlet weak var tableView: UITableView!
    
    //ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }
    
    func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .purple
        
        setupTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        viewModel.getData()
    }
}


