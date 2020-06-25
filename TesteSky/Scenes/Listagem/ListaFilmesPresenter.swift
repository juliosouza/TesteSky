//
//  ListaFilmesPresenter.swift
//  TesteSky
//
//  Created by Julio Cezar de Souza on 22/06/20.
//  Copyright (c) 2020 Julio Souza. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ListaFilmesPresentationLogic {
    func presentList(response: ListaFilmes.Response)
    func presentDefaultError()
    
}

class ListaFilmesPresenter: ListaFilmesPresentationLogic
{
    weak var viewController: ListaFilmesDisplayLogic?
    
    
    
    func presentList(response: ListaFilmes.Response) {

        viewController?.exibirListaFilmes(response: response)
    }
    
    
    func presentDefaultError() {
        
    }

}