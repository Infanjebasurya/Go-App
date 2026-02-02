// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../bloc/ride_bloc.dart';
// import '../bloc/ride_state.dart';
// import '../constants/app_colors.dart';

// class CouponSection extends StatelessWidget {
//   const CouponSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<RideBloc, RideState>(
//       builder: (context, state) {
//         return Container(
//           padding: const EdgeInsets.all(20),
//           decoration: BoxDecoration(
//             color: AppColors.couponBackground,
//             borderRadius: BorderRadius.circular(12),
//             border: Border.all(color: AppColors.borderColor),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Receive a 15% coupon text - exactly as in screenshot
//               Text(
//                 'Receive a 15% coupon on your\nfirst three orders!',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.textPrimary,
//                   height: 1.3,
//                 ),
//               ),
              
//               const SizedBox(height: 20),
              
//               // Total Orders and count row
//               Row(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Total Orders:',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: AppColors.textSecondary,
//                         ),
//                       ),
//                       Text(
//                         '${state.completedOrders} of 3',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.w700,
//                           color: AppColors.textPrimary,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Spacer(),
//                   // Progress indicator
//                   SizedBox(
//                     width: 150,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         LinearProgressIndicator(
//                           value: state.completedOrders / 3,
//                           backgroundColor: AppColors.grey200,
//                           valueColor: AlwaysStoppedAnimation<Color>(AppColors.green),
//                           borderRadius: BorderRadius.circular(4),
//                           minHeight: 6,
//                         ),
//                         const SizedBox(height: 4),
//                         Text(
//                           '${(state.completedOrders / 3 * 100).toInt()}% complete',
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: AppColors.textSecondary,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }