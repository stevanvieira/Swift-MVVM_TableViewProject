//
//  MainViewModel.swift
//  MVVMCourse2_Movies
//
//  Created by stevan on 15/12/2023.
//

import Foundation

class MainViewModel {
    
    var isLoading: Observable<Bool> = Observable(false) //default false, because by default its not loading
    var dataSource: TrendingMovieModel?
    
    func numberOfSections() -> Int {
        return 1 //for now we will have only one section
    }
    
    func numberOfRows(in section: Int) -> Int {
        return 10 //for now we will have 10 rows
    }
    
    func getData() {
        if isLoading.value ?? true {
            return //if true, we dont want to continue, we want the load to finish first, so we return
        }
        
        isLoading.value = true //isLoading Starts
        APICaller.getTrendingMovies { [weak self] result in
            self?.isLoading.value = false //isLoading Finishes
            
            switch result {
                case.success(let data):
                    print("Success Message:")
                    print("Top Trending Counts: \(data.results.count)")
                case.failure(let error):
                    print("Failure Message:")
                    print(error)
            }
        }
    }
}
