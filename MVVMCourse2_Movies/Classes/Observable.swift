//
//  Observable.swift
//  MVVMCourse2_Movies
//
//  Created by stevan on 17/12/2023.
//

import Foundation

class Observable<T> {
    
    //This variable is Generic Type, and also Optional, so it can take nil values as well
    var value: T? {
        didSet {
            DispatchQueue.main.async {
                //when the value changes, it will update the variable listener with the new value:
                self.listener?(self.value)
            }
        }
    }
    
    //constructor/initializer:
    init( _ value: T?) {
        self.value = value
    }
    
    private var listener: ((T?) -> Void)?
    
    func bind( _ listener: @escaping ((T?) -> Void)) {
        listener(value)
        self.listener = listener //update our listener variable with the current update listener.
    }
}
