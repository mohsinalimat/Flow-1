//
//  CartPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class CartPresenter: CartModuleInput, CartViewOutput, CartInteractorOutput {

    weak var view: CartViewInput!
    var interactor: CartInteractorInput!

    func viewIsReady() {

    }
}
