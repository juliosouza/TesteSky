//
//  ListaFilmesViewControllerTests.swift
//  TesteSky
//
//  Created by Julio Cezar de Souza on 25/06/20.
//  Copyright (c) 2020 Julio Souza. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import TesteSky
import XCTest

class ListaFilmesViewControllerTests: XCTestCase
{
  // MARK: Subject under test
  
  var sut: ListaFilmesViewController!
  var window: UIWindow!
  
  // MARK: Test lifecycle
  
  override func setUp()
  {
    super.setUp()
    window = UIWindow()
    setupListaFilmesViewController()
  }
  
  override func tearDown()
  {
    window = nil
    super.tearDown()
  }
  
  // MARK: Test setup
  
  func setupListaFilmesViewController()
  {
    let bundle = Bundle.main
    let storyboard = UIStoryboard(name: "Main", bundle: bundle)
    sut = storyboard.instantiateViewController(withIdentifier: "ListaFilmesViewController") as? ListaFilmesViewController
  }
  
  func loadView()
  {
    window.addSubview(sut.view)
    RunLoop.current.run(until: Date())
  }
  
  // MARK: Test doubles
  
    class ListaFilmesBusinessLogicSpy: ListaFilmesBusinessLogic {
        
        var chamouMetodo = false
        
        func carregarListaInicialFilmes() {
            chamouMetodo = true
        }
    }
    
  // MARK: Tests
  
  func testCarregarListaInialFilmes() {
    // Given
    let spy = ListaFilmesBusinessLogicSpy()
    sut.interactor = spy
    
    // When
    loadView()
    
    // Then
    XCTAssertTrue(spy.chamouMetodo, "viewDidLoad() chamou o interactor para carregar a lista inicial")
  }
  
  func testDisplayListaFilme() {
    // Given
    let lista: [ListaFilmes.Filme] = []
    
    // When
    loadView()
    sut.exibirListaFilmes(response: lista)
    
    // Then
    XCTAssertNotNil(lista, "Carregou a lista com dados da API")

  }
}
