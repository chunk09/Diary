//
//  WriteView.swift
//  Diary
//
//  Created by HelloUser on 2022/07/17.
//

import SwiftUI

struct WriteView: View {
    @State var title = "";
    @State var contents = "";
    
    var body: some View {
        VStack {
            TextField("제목을 입력해주세요", text: $title)
                .padding()
                .disableAutocorrection(true)
                .textFieldStyle(.roundedBorder)
                .font(.system(size: 17))
            
            TextEditor(text: $contents)
                .padding()
                .cornerRadius(15)
                .font(.system(size: 15))
                .lineSpacing(5)
        }
    }
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}
