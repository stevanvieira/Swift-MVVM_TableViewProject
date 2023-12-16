//
//  MainViewModel.swift
//  MVVMCourse2_Movies
//
//  Created by stevan on 15/12/2023.
//

import Foundation

class MainViewModel {
    
    func numberOfSections() -> Int {
        return 1 //for now we will have only one section
    }
    
    func numberOfRows(in section: Int) -> Int {
        return 10 //for now we will have 10 rows
    }
}
