//
//  MapPresenter.swift
//  Google Maps Example
//
//  Created by Jesús Hernández Alarcón on 7/15/18.
//  Copyright (c) 2018 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import UIKit

protocol MapPresentationLogic{
  func presentSomething(response: Map.Something.Response)
}

class MapPresenter: MapPresentationLogic{
  weak var viewController: MapDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Map.Something.Response)
  {
    let viewModel = Map.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
