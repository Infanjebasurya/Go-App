// import 'package:flutter/material.dart';
// import '../constants/app_colors.dart';

// class WelcomeSection extends StatelessWidget {
//   const WelcomeSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Hi! Sri Karan
//         RichText(
//           text: TextSpan(
//             children: [
//               TextSpan(
//                 text: 'Hi! ',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.w700,
//                   color: AppColors.textPrimary,
//                   height: 1.2,
//                 ),
//               ),
//               TextSpan(
//                 text: 'Sri Karan',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.w700,
//                   color: AppColors.primaryBlue,
//                   height: 1.2,
//                 ),
//               ),
//             ],
//           ),
//         ),
        
//         // Welcome back
//         Text(
//           'Welcome back',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.w700,
//             color: AppColors.textPrimary,
//             height: 1.2,
//           ),
//         ),
        
//         const SizedBox(height: 20),
        
//         // Thin divider
//         Container(
//           height: 0.5,
//           color: AppColors.dividerColor,
//         ),
        
//         const SizedBox(height: 20),
        
//         // Are you ready for a seamless ride?
//         Text(
//           'Are you ready for a seamless ride?',
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.w600,
//             color: AppColors.textPrimary,
//           ),
//         ),
        
//         const SizedBox(height: 8),
        
//         // Description
//         Text(
//           "Let's make it effortless and smooth from start to finish.",
//           style: TextStyle(
//             fontSize: 14,
//             color: AppColors.textSecondary,
//           ),
//         ),
        
//         const SizedBox(height: 20),
        
//         // Ride with GO button with scooter icon
//         Container(
//           height: 48,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: AppColors.primaryBlue,
//             borderRadius: BorderRadius.circular(12), // Changed to 12 as in screenshot
//             boxShadow: [
//               BoxShadow(
//                 color: AppColors.primaryBlue.withOpacity(0.2),
//                 blurRadius: 8,
//                 offset: const Offset(0, 4),
//               ),
//             ],
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Ride with GO',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.white,
//                 ),
//               ),
//               const SizedBox(width: 8),
//               // Scooter icon - replace with your asset
//               Container(
//                 width: 24,
//                 height: 24,
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.2),
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//                 child: const Icon(
//                   Icons.electric_scooter,
//                   color: Colors.white,
//                   size: 18,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }