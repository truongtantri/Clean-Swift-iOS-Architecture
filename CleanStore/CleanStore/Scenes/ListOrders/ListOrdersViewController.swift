//
//  ListOrdersViewController.swift
//  CleanStore
//
//  Created by Hiep Nguyen on 3/1/16.
//  Copyright (c) 2016 Zyncas. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol ListOrdersViewControllerInput
{
//  func displaySomething(viewModel: ListOrdersViewModel)
}

protocol ListOrdersViewControllerOutput
{
//  func doSomething(request: ListOrdersRequest)
    
    func fetchOrders(request: ListOrders_FetchOrders_Request)
}

class ListOrdersViewController: UITableViewController, ListOrdersViewControllerInput
{
  var output: ListOrdersViewControllerOutput!
  var router: ListOrdersRouter!
  
  // MARK: Object lifecycle
  
  override func awakeFromNib()
  {
    super.awakeFromNib()
    ListOrdersConfigurator.sharedInstance.configure(self)
  }
  
  // MARK: View lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
//    doSomethingOnLoad()
    
    fetchOrdersOnLoad()
  }
  
  // MARK: Event handling
  
//  func doSomethingOnLoad()
//  {
//    // NOTE: Ask the Interactor to do some work
//    
//    let request = ListOrdersRequest()
////    output.doSomething(request)
//  }
    
    func fetchOrdersOnLoad() {
        
        let request = ListOrders_FetchOrders_Request()
        
        output.fetchOrders(request)
    }
  
  // MARK: Display logic
  
  func displaySomething(viewModel: ListOrdersViewModel)
  {
    // NOTE: Display the result from the Presenter
    
    // nameTextField.text = viewModel.name
  }
}
