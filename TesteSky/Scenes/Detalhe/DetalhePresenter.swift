//
//  DetalhePresenter.swift
//  TesteSky
//
//  Created by Julio Cezar de Souza on 24/06/20.
//  Copyright (c) 2020 Julio Souza. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol DetalhePresentationLogic
{
  func presentSomething(response: Detalhe.Something.Response)
}

class DetalhePresenter: DetalhePresentationLogic
{
  weak var viewController: DetalheDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Detalhe.Something.Response)
  {
    let viewModel = Detalhe.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
