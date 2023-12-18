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
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    //ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    
    //Variables:
    var cellDataSource: [Movie] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
        bindViewModel()
    }
    
    func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .purple
        
        setupTableView()
    }
    
    func bindViewModel() {
        viewModel.isLoading.bind { [weak self] isLoading in
            guard let self = self, let isLoading = isLoading else {
                return
            }
            DispatchQueue.main.async {
                if isLoading { //if true, the animation of loading will start;
                    self.activityIndicator.startAnimating()
                }
                else { //if false, the animation of loading will stop:
                    self.activityIndicator.stopAnimating()
                }
            }
        }
        viewModel.cellDataSource.bind { [weak self] movies in
            guard let self = self, let movies = movies else {
                return
            }
            self.cellDataSource = movies
            self.reloadTableView()
        }
    }
    
    //Function for tests:
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }
}


