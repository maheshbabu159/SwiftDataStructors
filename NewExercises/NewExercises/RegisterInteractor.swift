//
//  RegisterInteractor.swift
//  iOSInterviewPreparation
//
//  Created by apple on 27/04/17.
//  Copyright (c) 2017 apple. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol RegisterInteractorInput
{
  func doSomething(request: Register.Something.Request)
}

protocol RegisterInteractorOutput
{
  func presentSomething(response: Register.Something.Response)
}

class RegisterInteractor: RegisterInteractorInput
{
  var output: RegisterInteractorOutput!
  var worker: RegisterWorker!
  
  // MARK: - Business logic
  
  func doSomething(request: Register.Something.Request)
  {
    // NOTE: Create some Worker to do the work
    
    worker = RegisterWorker()
    worker.doSomeWork()
    
    // NOTE: Pass the result to the Presenter
    
    let response = Register.Something.Response()
    output.presentSomething(response: response)
  }
}
