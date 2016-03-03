//
//  CreateOrderViewControllerTests.swift
//  CleanStore
//
//  Created by Hiep Nguyen on 3/3/16.
//  Copyright (c) 2016 Zyncas. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

@testable import CleanStore
import XCTest

class CreateOrderViewControllerTests: XCTestCase
{
  // MARK: Subject under test
  
  var sut: CreateOrderViewController!
  var window: UIWindow!
  
  // MARK: Test lifecycle
  
  override func setUp()
  {
    super.setUp()
    window = UIWindow()
    setupCreateOrderViewController()
  }
  
  override func tearDown()
  {
    window = nil
    super.tearDown()
  }
  
  // MARK: Test setup
  
  func setupCreateOrderViewController()
  {
    let bundle = NSBundle.mainBundle()
    let storyboard = UIStoryboard(name: "Main", bundle: bundle)
    sut = storyboard.instantiateViewControllerWithIdentifier("CreateOrderViewController") as! CreateOrderViewController
  }
  
  func loadView()
  {
    window.addSubview(sut.view)
    NSRunLoop.currentRunLoop().runUntilDate(NSDate())
  }
  
  // MARK: Test doubles
  
  // MARK: Tests
  
  func testSomething()
  {
    // Given
    
    // When
    
    // Then
  }
}
