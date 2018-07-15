//
//  MapInteractor.swift
//  Google Maps Example
//
//  Created by Jesús Hernández Alarcón on 7/15/18.
//  Copyright (c) 2018 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import UIKit

protocol MapBusinessLogic
{
  func doSomething(request: Map.Something.Request)
}

protocol MapDataStore
{
  //var name: String { get set }
}

class MapInteractor: MapBusinessLogic, MapDataStore
{
  var presenter: MapPresentationLogic?
  var worker: MapWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Map.Something.Request)
  {
    worker = MapWorker()
    worker?.doSomeWork()
    
    let response = Map.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
