//
//  ListaFilmesModels.swift
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

enum ListaFilmes
{
    // MARK: Use cases
    
    typealias Response = [Filme]
    
    struct Filme: Codable {
        let title: String
        let overview: String
        let duration: String
        let release_year: String
        let cover_url: String
        let backdrops_url: [String]
        let id: String
    }
    
    
    
    struct Request {
        let service: ListaFilmesAPI
    }
    
    enum ListaFilmesAPI {
        case get
    }
}

extension ListaFilmes.ListaFilmesAPI: Endpoint {
    var base: String {
        return Constants.baseURL
    }
    
    var path: String {
        switch self {
        case .get: return Constants.movies
        }
    }
}
