//
//  ListOrdersPresenter.swift
//  CleanStore
//
//  Created by Hiep Nguyen on 3/1/16.
//  Copyright (c) 2016 Zyncas. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol ListOrdersPresenterInput
{
//  func presentSomething(response: ListOrdersResponse)
}

protocol ListOrdersPresenterOutput: class
{
//  func displaySomething(viewModel: ListOrdersViewModel)
}

class ListOrdersPresenter: ListOrdersPresenterInput
{
  weak var output: ListOrdersPresenterOutput!
  
  // MARK: Presentation logic
  
//  func presentSomething(response: ListOrdersResponse)
//  {
//    // NOTE: Format the response from the Interactor and pass the result back to the View Controller
//    
////    let viewModel = ListOrdersViewModel()
////    output.displaySomething(viewModel)
//  }
}
