//
//  FeedCoordinator.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class FeedCoordinator: BaseCoordinator, FeedCoordinatorOutput {
	
	// MARK: - FeedCoordinatorOutput
	
	var finishFlow: (() -> Void)?
	
	private let factory: FeedFlowFactory
	private let router: Router
	
	init(router: Router, factory: FeedFlowFactory) {
		
		self.factory = factory
		self.router = router
	}
	
	// MARK: - BaseCoordinator
	
	override func start() {
		showFeed()
	}
	
	private func showFeed() {
		let feedOutput = factory.produceFeedOutput()
		feedOutput.onItemSelected = { [weak self] in
			self?.showProductPage()
		}
		
		router.setRootModule(feedOutput, hideBar: true)
	}
	
	private func showProductPage() {
		
	}
	
	private func showCart() {
		
	}
	
}
