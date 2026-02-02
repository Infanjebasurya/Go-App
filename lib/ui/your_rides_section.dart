// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../bloc/ride_bloc.dart';
// import '../bloc/ride_state.dart';
// import '../bloc/ride_event.dart';
// import '../models/ride_model.dart';
// import '../constants/app_colors.dart';

// class YourRidesSection extends StatelessWidget {
//   const YourRidesSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // "Your Ride" heading with proper styling
//         Text(
//           'Your Ride',
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.w700,
//             color: AppColors.textPrimary,
//           ),
//         ),
        
//         const SizedBox(height: 16),
        
//         // Ride card
//         BlocBuilder<RideBloc, RideState>(
//           builder: (context, state) {
//             if (state.rides.isEmpty) {
//               return Container();
//             }
            
//             final ride = state.rides.first;
//             return RideCard(ride: ride);
//           },
//         ),
//       ],
//     );
//   }
// }

// class RideCard extends StatelessWidget {
//   final Ride ride;

//   const RideCard({super.key, required this.ride});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: AppColors.white,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: AppColors.borderColor),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 4,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Location row with ellipsis - EXACTLY as in screenshot
//           Row(
//             children: [
//               Expanded(
//                 child: Text(
//                   ride.fromLocation,
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: AppColors.textPrimary,
//                   ),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 child: Icon(
//                   Icons.arrow_forward,
//                   size: 16,
//                   color: AppColors.textSecondary,
//                 ),
//               ),
//               Expanded(
//                 child: Text(
//                   ride.toLocation,
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: AppColors.textPrimary,
//                   ),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             ],
//           ),
          
//           const SizedBox(height: 12),
          
//           // Date and Time row
//           Row(
//             children: [
//               Icon(
//                 Icons.calendar_today_outlined,
//                 size: 16,
//                 color: AppColors.textSecondary,
//               ),
//               const SizedBox(width: 8),
//               Text(
//                 ride.formattedDate.split(' - ')[0], // Date part
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: AppColors.textSecondary,
//                 ),
//               ),
//               const SizedBox(width: 12),
//               Icon(
//                 Icons.access_time,
//                 size: 16,
//                 color: AppColors.textSecondary,
//               ),
//               const SizedBox(width: 8),
//               Text(
//                 ride.formattedDate.split(' - ')[1], // Time part
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: AppColors.textSecondary,
//                 ),
//               ),
//             ],
//           ),
          
//           const SizedBox(height: 16),
          
//           // Divider
//           Container(
//             height: 1,
//             color: AppColors.dividerColor,
//           ),
          
//           const SizedBox(height: 16),
          
//           // Price and Book Again button row
//           Row(
//             children: [
//               // Price
//               Text(
//                 '₹${ride.amount.toStringAsFixed(1)}',
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.w700,
//                   color: AppColors.textPrimary,
//                 ),
//               ),
              
//               const Spacer(),
              
//               // Book Again button - exactly as in screenshot
//               Container(
//                 height: 36,
//                 width: 120,
//                 decoration: BoxDecoration(
//                   color: AppColors.lightBlue,
//                   borderRadius: BorderRadius.circular(8),
//                   border: Border.all(color: AppColors.primaryBlue),
//                 ),
//                 child: Material(
//                   color: Colors.transparent,
//                   child: InkWell(
//                     borderRadius: BorderRadius.circular(8),
//                     onTap: () {
//                       context.read<RideBloc>().add(BookAgainEvent(ride.id));
//                     },
//                     child: Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.replay,
//                             size: 16,
//                             color: AppColors.primaryBlue,
//                           ),
//                           const SizedBox(width: 6),
//                           Text(
//                             'Book Again',
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w600,
//                               color: AppColors.primaryBlue,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }