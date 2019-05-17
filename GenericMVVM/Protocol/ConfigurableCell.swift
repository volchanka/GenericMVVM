//
//  ConfigurableCell.swift
//  GenericMVVM
//
//  Created by Svetlana on 13/05/2019.
//  Copyright © 2019 ws233. All rights reserved.
//

import Foundation

protocol ViewModelProtocol {
    
}

protocol Configurable {
    var abstractViewModel: ViewModelProtocol? { get set }
}
