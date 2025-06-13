// import 'package:booksy/Core/App_Router.dart';
// import 'package:booksy/constants.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class AnimationView extends StatelessWidget {
  
//   final int index ;
//   final String image;
//   const AnimationView({super.key, required this.index, required this.image});

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Align(
//               alignment: Alignment.topLeft,
//               child: IconButton(
//                 onPressed: () {
//                  context.go(AppRouter.homeView);
//                 },
//                 icon:
//                     const Icon(Icons.arrow_back, color: Colors.white, size: 30),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: Hero(
//                 tag: "$index",
//                 child:CachedNetworkImage(
//                         imageUrl:
//                            image,
//                         fit: BoxFit.fill,
//                         placeholder: (context, url) => Center(
//                           child: CircularProgressIndicator(
//                             color: Booksy.kPrimaryColor,
//                           ),
//                         ),
//                         errorWidget: (context, url, error) =>
//                             const Icon(Icons.error),
//                       ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
