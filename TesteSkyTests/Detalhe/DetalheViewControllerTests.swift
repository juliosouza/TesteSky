//
//  DetalheViewControllerTests.swift
//  TesteSky
//
//  Created by Julio Cezar de Souza on 26/06/20.
//  Copyright (c) 2020 Julio Souza. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import TesteSky
import XCTest

class DetalheViewControllerTests: XCTestCase {
    // MARK: Subject under test
    
    var sut: DetalheViewController!
    var window: UIWindow!
    
    // MARK: Test lifecycle
    
    override func setUp() {
        super.setUp()
        window = UIWindow()
        setupDetalheViewController()
    }
    
    override func tearDown() {
        window = nil
        super.tearDown()
    }
    
    // MARK: Test setup
    
    func setupDetalheViewController() {
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        sut = storyboard.instantiateViewController(withIdentifier: "DetalheViewController") as! DetalheViewController
    }
    
    func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }
    
    // MARK: Test doubles
    
    class DetalheBusinessLogicSpy: DetalheBusinessLogic {
        var chamouMetodo = false
        
        func atualizarTela() {
            chamouMetodo = true
        }
    }
    
    // MARK: Tests
    
    func testDisplayDetalheFilme() {
        
        let detalhe = sut.detalhe
        
        // When
        loadView()
        sut.atualizarTela()
        sut.titleMovieDetalhe.text = detalhe?.title
        sut.overviewMovieDetalhe.text = detalhe?.overview
        sut.durationMovieDetalhe.text = detalhe?.duration
        sut.yearMovieDetalhe.text = detalhe?.release_year
        
        // Then
        XCTAssertTrue(sut.titleMovieDetalhe.text?.isEmpty ?? true)
        XCTAssertTrue(sut.overviewMovieDetalhe.text?.isEmpty ?? true)
        XCTAssertTrue(sut.durationMovieDetalhe.text?.isEmpty ?? true)
        XCTAssertTrue(sut.yearMovieDetalhe.text?.isEmpty ?? true)
        
    }
}
