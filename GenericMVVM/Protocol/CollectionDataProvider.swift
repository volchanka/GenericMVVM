//
//  CollectionDataProvider.swidt
//  GenericMVVM
//
//  Created by Svetlana on 13/05/2019.
//  Copyright © 2019 ws233. All rights reserved.
//

import Foundation

protocol CollectionDataProvider {
    func numberOfSections() -> Int
    func numberOfItems(in section: Int) -> Int
    func itemViewModel(at indexPath: IndexPath) -> ViewModelProtocol?
}
