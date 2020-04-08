
import SwiftUI

struct ContentView: View {
    
    @State var tasks = [Task]()
    
    private func addTask() {
        tasks.append(Task(name: "Wash a Car"))
    }
    
    var body: some View {
        List {
            Button(action: addTask) {
                Text("Add Task")
            }
            ForEach(tasks) { task in
                Text(task.name)
            }
            
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
