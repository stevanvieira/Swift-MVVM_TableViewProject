//
//  NetworkConstant.swift
//  MVVMCourse2_Movies
//
//  Created by stevan on 16/12/2023.
//

import Foundation

class NetworkConstant {
    
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init() {
        //Its a Singleton Class, we dont want nobody to initialize it, so its private init()
    }
    
    public var apiKey: String {
        get { //read only
            //API key from https://www.themoviedb.org/
            return "49db3cb829211779dc53f257f8165cfa"
        }
    }
    
    public var serverAddress: String {
        get { //read only
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress: String {
        get { //read only
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
