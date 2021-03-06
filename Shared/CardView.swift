//
//  CardView.swift
//  HelloWord (iOS)
//
//  Created by Jorge Miranda on 20/06/22.
//

import SwiftUI

struct CardView: View {
    let scrum : DailyScrum
    var body: some View {
        VStack(alignment: .leading){
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack{
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .padding(.trailing, 20)
            }
        }
        .font(.caption)
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleDate[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
