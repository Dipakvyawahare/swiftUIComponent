//
//  RecordButtonView.swift
//  Reelme
//
//  Created by Dipak V. Vyawahare on 04/02/21.
//

import SwiftUI

struct RecordButtonView: View {
    @State var isPressed: Bool = false
    let action: ((Bool) -> Void)

    var body: some View {
        Button(action: {
            isPressed.toggle()
        }, label: {
            buttonView()
        })
    }

    func buttonView() -> some View {
        GeometryReader { geo in
            ZStack {
                Circle()
                    .stroke(Color.white,
                            style: StrokeStyle(lineWidth: geo.localWidth / 15))
                    .frame(width: geo.localWidth,
                           height: geo.localWidth,
                           alignment: .center)
                Rectangle()
                    .fill(Color.red)
                    .frame(width: geo.localWidth,
                           height: geo.localWidth,
                           alignment: .center)
                    .cornerRadius(isPressed ? geo.localWidth / 10 : geo.localWidth / 2)
                    .scaleEffect(isPressed ? 0.4 : 0.85)
            }
            .animation(.spring())
        }
    }
}

struct RecordButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RecordButtonView { isPressed in

        }
    }
}
