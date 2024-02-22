import 'dart:html';

class Resource { // for students find help in the real world
  
  
  final String resourceName;
  final num resourceNum;
  final String resourceURL;
  final String resourceDesc;

Resource({required this.resourceName, required this.resourceNum, required this.resourceURL, required this.resourceDesc});
}


var sampleLists = [

    Resource(resourceName:"National Mental Health Helpline", resourceNum: 2341414, resourceDesc: "Available 24/7 for mental health support.", resourceURL: "tel:1-800-662-HELP"),
    Resource(resourceName: "Crisis Text Line", resourceNum: 00002, resourceDesc: "Text HOME to 741741 for free, 24/7 crisis support.", resourceURL: "sms:741741"),
    Resource(resourceName: "Campus Counseling Center", resourceNum: 00003, resourceDesc: "Professional counseling services for students.",resourceURL: "https://yourcollege.edu/counseling"),


];





// class NavTab extends StatelessWidget {
//   const NavTab({super.key});

// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Navigation'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Rewards'),
//           onPressed: () {
//             // Click here for reward!
//           },
//         )
//       )
//     );
//  // added a nav tab for future linking to other parts of the page
//   }
// }