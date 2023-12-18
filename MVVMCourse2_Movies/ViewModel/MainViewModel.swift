//
//  MainViewModel.swift
//  MVVMCourse2_Movies
//
//  Created by stevan on 15/12/2023.
//

import Foundation

class MainViewModel {
    
    var isLoading: Observable<Bool> = Observable(false) //default false, because by default its not loading
    var cellDataSource: Observable<[Movie]> = Observable(nil)
    var dataSource: TrendingMovieModel?
    
    func numberOfSections() -> Int {
        return 1 //for now we will have only one section
    }
    
    func numberOfRows(in section: Int) -> Int {
        self.dataSource?.results.count ?? 0 //if nil we assing rows as 0
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
                    self?.dataSource = data
                    self?.mapCellData()
                case.failure(let error):
                    print("Failure Message:")
                    print(error)
            }
        }
    }
    
    func mapCellData() {
        self.cellDataSource.value = self.dataSource?.results ?? []
        //when cellDataSource.value changes, it will update the MainViewController. But we dont have any listener inside the MainViewController for the cellDataSource, thats next step...
    }
    
    func getMovieTitle( _ movie: Movie) -> String {
        return movie.title ?? movie.name ?? ""
    }
}
