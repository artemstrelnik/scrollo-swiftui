import SwiftUI

class StoryViewModel: ObservableObject {
    @Published var stories : [StoryModel] = [
        StoryModel(profileName: "suncitydn", profileImage: "https://instagram.fdok2-1.fna.fbcdn.net/v/t51.2885-19/123701097_1356107998053530_1654506688799465478_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fdok2-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=G8P_Ss-Cyv4AX_ut71_&edm=ALlQn9MBAAAA&ccb=7-4&oh=00_AT8l-8ycB8cWkKJ0YI-cMyrKXHpKiUYiWRTxinZVDlX90w&oe=626A9554&_nc_sid=48a2a6", isSeen: false, stories: [
            Story(imageUrl: "https://images.unsplash.com/photo-1650602356313-79daae307eaf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
            Story(imageUrl: "https://images.unsplash.com/photo-1650562267485-52421317f257?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
            Story(imageUrl: "https://images.unsplash.com/photo-1650471424123-0b9eb1bdf057?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0MXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
        ]),
        StoryModel(profileName: "chacha_puri_vertu", profileImage: "https://instagram.fdok2-1.fna.fbcdn.net/v/t51.2885-19/244382918_1233273347176194_727955315450624025_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fdok2-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=MU__Wgtk2voAX89pSqM&edm=ANmP7GQBAAAA&ccb=7-4&oh=00_AT_Wt063DuA0hN643BdCUI4MfUy5aksF5GvGIwBES9eT2A&oe=626AC2AD&_nc_sid=276363", isSeen: false, stories: [
            Story(imageUrl: "https://images.unsplash.com/photo-1553272725-086100aecf5e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
            Story(imageUrl: "https://images.unsplash.com/photo-1650508761016-c0058a25b284?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1NHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
        ]),
        StoryModel(profileName: "tech.unicorn", profileImage: "https://instagram.fdok2-1.fna.fbcdn.net/v/t51.2885-19/241014861_980566112788502_1766854824595758992_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fdok2-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=ENLq0ZlmFe8AX_jn0Uq&edm=ALlQn9MBAAAA&ccb=7-4&oh=00_AT94mfmSIBznnTKUlN4KzA4ohTnY9C4lDuP2Xyb0YoH4Ag&oe=6269CD66&_nc_sid=48a2a6", isSeen: false, stories: [
            Story(imageUrl: "https://random.imagecdn.app/300/500"),
            Story(imageUrl: "https://random.imagecdn.app/300/500"),
            Story(imageUrl: "https://random.imagecdn.app/300/500"),
        ]),
        StoryModel(profileName: "thomreads", profileImage: "https://instagram.fdok2-1.fna.fbcdn.net/v/t51.2885-19/278329172_1410122722773384_8298725928845066784_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fdok2-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=UX8jwZRVcf4AX-Qr1JE&edm=ANmP7GQBAAAA&ccb=7-4&oh=00_AT-hobrO3rnmwXnPJD8gv3Ry6_LMDIvP6lxnLVNlmWKY4A&oe=626ABF3E&_nc_sid=276363", isSeen: false, stories: [
            Story(imageUrl: "https://images.unsplash.com/photo-1650562322195-1635cd6fc2df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
        ]),
        StoryModel(profileName: "joeel56", profileImage: "https://instagram.fdok2-1.fna.fbcdn.net/v/t51.2885-19/139713764_952310561969302_5707537952180134536_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fdok2-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=IFspLOKPa2AAX9tRYuf&edm=ANmP7GQBAAAA&ccb=7-4&oh=00_AT9WGNUe8qQmoksZOEDsotmgNW71sXE6euKzkYQXPv8C4w&oe=626B481D&_nc_sid=276363", isSeen: false, stories: [
            Story(imageUrl: "https://images.unsplash.com/photo-1650537344598-208f54654c64?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
            Story(imageUrl: "https://images.unsplash.com/photo-1650509354029-32436c162063?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMDB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
            Story(imageUrl: "https://images.unsplash.com/photo-1650537507759-711970d4ee0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMTh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
            Story(imageUrl: "https://images.unsplash.com/photo-1650523853505-29db378c3298?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMjR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
            Story(imageUrl: "https://images.unsplash.com/photo-1650477021184-6fe8ef5b846e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
        ]),
        StoryModel(profileName: "tonyhawk", profileImage: "https://instagram.fdok2-1.fna.fbcdn.net/v/t51.2885-19/11821190_1609277929320685_430060312_a.jpg?_nc_ht=instagram.fdok2-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=wsoGgtjbi9kAX9H9kAe&edm=ALlQn9MBAAAA&ccb=7-4&oh=00_AT_GD1tk76AZ7BVxDoZdSWLpWbXq6IpsZkNZT9FEJHh4IQ&oe=6269BCAE&_nc_sid=48a2a6", isSeen: false, stories: [
            Story(imageUrl: "https://images.unsplash.com/photo-1650548071955-a878d0883f73?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMzR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
        ])
    ]
    
    @Published var showStory: Bool = false
    @Published var currentStory: String = ""
}

