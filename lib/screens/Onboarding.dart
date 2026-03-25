import 'package:flutter/material.dart';
class Onboarding extends StatefulWidget {
	const Onboarding({super.key});
	@override
	OnboardingState createState() => OnboardingState();
}
class OnboardingState extends State<Onboarding> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SafeArea(
				child: Container(
					constraints: const BoxConstraints.expand(),
					color: Color(0xFFFFFFFF),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Expanded(
								child: IntrinsicHeight(
									child: Container(
										decoration: BoxDecoration(
											borderRadius: BorderRadius.circular(20),
										),
										width: double.infinity,
										height: double.infinity,
										child: SingleChildScrollView(
											padding: const EdgeInsets.only( top: 2),
											child: Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													IntrinsicHeight(
														child: Container(
															margin: const EdgeInsets.only( bottom: 215, left: 12, right: 12),
															width: double.infinity,
															child: Row(
																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																children: [
																	Text(
																		"11:07",
																		style: TextStyle(
																			color: Color(0xFF2C3439),
																			fontSize: 12,
																			fontWeight: FontWeight.bold,
																		),
																	),
																	Container(
																		width: 56,
																		height: 16,
																		child: Image.network(
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/px7vspwt_expires_30_days.png",
																			fit: BoxFit.fill,
																		)
																	),
																]
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															color: Color(0x00000000),
															padding: const EdgeInsets.only( top: 297),
															width: double.infinity,
															child: Column(
																children: [
																	IntrinsicWidth(
																		child: IntrinsicHeight(
																			child: Container(
																				decoration: BoxDecoration(
																					borderRadius: BorderRadius.circular(12),
																					color: Color(0xFF2C3439),
																				),
																				padding: const EdgeInsets.only( top: 9, bottom: 9, left: 10, right: 10),
																				margin: const EdgeInsets.only( bottom: 33),
																				child: Row(
																					crossAxisAlignment: CrossAxisAlignment.start,
																					children: [
																						Container(
																							margin: const EdgeInsets.only( right: 9),
																							width: 22,
																							height: 54,
																							child: Image.network(
																								"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/d4wwvybt_expires_30_days.png",
																								fit: BoxFit.fill,
																							)
																						),
																						Container(
																							margin: const EdgeInsets.only( top: 10, right: 9),
																							width: 10,
																							height: 43,
																							child: Image.network(
																								"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/2bxn7qu4_expires_30_days.png",
																								fit: BoxFit.fill,
																							)
																						),
																						Container(
																							margin: const EdgeInsets.only( top: 7, right: 9),
																							width: 32,
																							height: 46,
																							child: Image.network(
																								"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/joswmh10_expires_30_days.png",
																								fit: BoxFit.fill,
																							)
																						),
																						IntrinsicWidth(
																							child: IntrinsicHeight(
																								child: Container(
																									margin: const EdgeInsets.only( top: 7, right: 9),
																									child: Column(
																										crossAxisAlignment: CrossAxisAlignment.start,
																										children: [
																											Container(
																												margin: const EdgeInsets.only( bottom: 8),
																												width: 10,
																												height: 5,
																												child: Image.network(
																													"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/l2anmc2y_expires_30_days.png",
																													fit: BoxFit.fill,
																												)
																											),
																											Container(
																												width: 10,
																												height: 32,
																												child: Image.network(
																													"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/ia3elwyv_expires_30_days.png",
																													fit: BoxFit.fill,
																												)
																											),
																										]
																									),
																								),
																							),
																						),
																						Container(
																							color: Color(0xFFB94429),
																							margin: const EdgeInsets.only( top: 11, right: 9),
																							width: 10,
																							height: 43,
																							child: SizedBox(),
																						),
																						Container(
																							margin: const EdgeInsets.only( top: 21),
																							width: 32,
																							height: 32,
																							child: Image.network(
																								"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/23mwbnzs_expires_30_days.png",
																								fit: BoxFit.fill,
																							)
																						),
																					]
																				),
																			),
																		),
																	),
																	InkWell(
																		onTap: () { print('Pressed'); },
																		child: IntrinsicHeight(
																			child: Container(
																				decoration: BoxDecoration(
																					border: Border.all(
																						color: Color(0xFFB94429),
																						width: 1,
																					),
																					borderRadius: BorderRadius.circular(40),
																				),
																				padding: const EdgeInsets.symmetric(vertical: 16),
																				margin: const EdgeInsets.only( bottom: 12, left: 12, right: 12),
																				width: double.infinity,
																				child: Column(
																					children: [
																						Text(
																							"Explore without signing in",
																							style: TextStyle(
																								color: Color(0xFFB94429),
																								fontSize: 12,
																								fontWeight: FontWeight.bold,
																							),
																						),
																					]
																				),
																			),
																		),
																	),
																	InkWell(
																		onTap: () { Navigator.pushNamed(context, '/signin'); },
																		child: IntrinsicHeight(
																			child: Container(
																				decoration: BoxDecoration(
																					border: Border.all(
																						color: Color(0xFFB94429),
																						width: 1,
																					),
																					borderRadius: BorderRadius.circular(40),
																				),
																				padding: const EdgeInsets.symmetric(vertical: 16),
																				margin: const EdgeInsets.only( bottom: 37, left: 12, right: 12),
																				width: double.infinity,
																				child: Column(
																					children: [
																						Text(
																							"Sign in",
																							style: TextStyle(
																								color: Color(0xFFB94429),
																								fontSize: 12,
																								fontWeight: FontWeight.bold,
																							),
																						),
																					]
																				),
																			),
																		),
																	),
																]
															),
														),
													),
												],
											)
										),
									),
								),
							),
						],
					),
				),
			),
		);
	}
}