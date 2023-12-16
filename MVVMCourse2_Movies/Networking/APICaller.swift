//
//  APICaller.swift
//  MVVMCourse2_Movies
//
//  Created by stevan on 16/12/2023.
//

import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
}

public class APICaller {
    
    static func getTrendingMovies(
        completionHandler: @escaping (_ result: Result<TrendingMovieModel, NetworkError>) -> Void ) {
        
            let urlString = NetworkConstant.shared.serverAddress +
            "trending/all/day?api_key=" +
            NetworkConstant.shared.apiKey
            //É o mesmo que: let urlString = https://api.themoviedb.org/3/trending/all/day?api_key=49db3cb829211779dc53f257f8165cfa
            
            //Convert urlString to url, else, urlError:
            guard let url = URL(string: urlString) else {
                completionHandler(.failure(.urlError))
                return
            }
            
            URLSession.shared.dataTask(with: <#T##URL#>, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
    }
}
