//
//  TableViewCell1.swift
//  GenericMVVM
//
//  Created by Svetlana on 13/05/2019.
//  Copyright © 2019 ws233. All rights reserved.
//

import UIKit

class TableViewCell1: UITableViewCell, ConfigurableCell {
//    var viewModel: ViewModelProtocol? {
//        didSet {
//            castedViewModel = viewModel as? ItemViewModelProtocol
//        }
//    }
    
    
    var castedViewModel: ItemViewModelProtocol? {
        didSet {
            textLabel?.text = castedViewModel?.text
        }
    }
}
