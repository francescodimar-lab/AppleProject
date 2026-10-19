import SwiftUI

struct ContentView: View {
    // Definiamo il layout della griglia: 2 colonne flessibili
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        ZStack {
            // Sfondo con gradiente
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.18, green: 0.08, blue: 0.28),
                    Color(red: 0.07, green: 0.05, blue: 0.12),
                    Color.black
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                    // --- HEADER ---
                    HStack(alignment: .center) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Hi, Marco! 👋")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Text("What are you doing right now?")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        HStack(spacing: 16) {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.gray)
                            
                            ZStack(alignment: .topTrailing) {
                                Image(systemName: "bell")
                                    .font(.title3)
                                    .foregroundColor(.white)
                                Circle()
                                    .fill(Color.red)
                                    .frame(width: 8, height: 8)
                                    .offset(x: 2, y: -2)
                            }
                        }
                    }
                    .padding(.top, 10)
                    
                    // --- ACTIVITIES SECTION ---
                    VStack(alignment: .leading, spacing: 16) {
                        Text("What are you doing?")
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        LazyVGrid(columns: columns, spacing: 16) {
                            
                            ActivityCardView(title: "Workout", iconName: "dumbbell.fill", color: .green) {
                                print("Navigate to Workout")
                            }
                            
                            ActivityCardView(title: "Study & Focus", iconName: "brain", color: .indigo) {
                                print("Navigate to Study & Focus")
                            }
                            
                            ActivityCardView(title: "Commuting", iconName: "car.fill", color: .red) {
                                print("Navigate to Commuting")
                            }
                            
                            ActivityCardView(title: "Cooking", iconName: "fork.knife", color: .teal) {
                                print("Navigate to Cooking")
                            }
                            
                            ActivityCardView(title: "Relax", iconName: "cup.and.saucer.fill", color: .yellow) {
                                print("Navigate to Relax")
                            }
                            
                            ActivityCardView(title: "Party", iconName: "party.popper.fill", color: .pink) {
                                print("Navigate to Party")
                            }
                        }
                    }
                    
                    Text("AAAAAAA").colorInvert()
                }
                .padding(.horizontal)
                
                
                
            }
            
            
        }
        
        
    }
}

#Preview {
    ContentView()
}
