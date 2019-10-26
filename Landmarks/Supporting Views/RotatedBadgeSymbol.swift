//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Philip Smith on 10/26/19.
//  Copyright © 2019 Philip Smith. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
	let angle: Angle
    var body: some View {
		BadgeSymbol()
			.padding(-60)
			.rotationEffect(angle, anchor: .bottom)
		
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
		RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
