//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Hossein Sharifi on 25/10/2023.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting info")) {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
            
            Section(header: Text("Attendes")) {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete(perform: { indices in
                    scrum.attendees.remove(atOffsets: indices)
                })
                HStack {
                    TextField("New Attendee", text: $newAttendeeName)
                    Button {
                        
                    } label: {
                        
                    }
                }
            }
            
        }
    }
}

#Preview {
    DetailEditView()
}
