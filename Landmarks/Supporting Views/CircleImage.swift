//
//  CircleImage.swift
//  Landmarks
//
//  Created by Philip Smith on 10/25/19.
//  Copyright © 2019 Philip Smith. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
	var image: Image
	
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
		CircleImage(image: Image("turtlerock"))
    }
}
