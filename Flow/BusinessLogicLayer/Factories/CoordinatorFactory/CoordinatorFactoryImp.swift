//
//  CoordinatorFactoryImp.swift
//  Flow
//
//  Created by workmachine on 31.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import Foundation

class CoordinatorFactoryImp: CoordinatorFactory {
	
	func produceAuthorizationCoordinator(router: Router, flowFactory: AuthorizationFlowFactory) -> Coordinator & AuthorizationCoordinatorOutput {
		
		let coordinator = AuthorizationCoordinator(router: router, factory: flowFactory)
		return coordinator
	}
	
	func produceOnboardingCoordinator(router: Router, flowFactory: OnboardingFlowFactory) -> Coordinator & OnboardingCoordinatorOutput {
		
		let coordinator = OnboardingCoordinator(router: router, factory: flowFactory)
		return coordinator
	}
	
	func produceFeedCoordinator(router: Router, flowFactory: FeedFlowFactory) -> Coordinator & FeedCoordinatorOutput {
		
	}
}
