import 'package:flutter/material.dart';
class HomeEmergencyHotlinesFireStations extends StatefulWidget {
	const HomeEmergencyHotlinesFireStations({super.key});
	@override
	HomeEmergencyHotlinesFireStationsState createState() => HomeEmergencyHotlinesFireStationsState();
}
class HomeEmergencyHotlinesFireStationsState extends State<HomeEmergencyHotlinesFireStations> {
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
											color: Color(0xFFF5F5DB),
										),
										width: double.infinity,
										height: double.infinity,
										child: SingleChildScrollView(
											child: Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													IntrinsicHeight(
														child: Container(
															color: Color(0xFFE05B4B),
															padding: const EdgeInsets.only( top: 2, right: 12),
															margin: const EdgeInsets.only( bottom: 24),
															width: double.infinity,
															child: Column(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	IntrinsicHeight(
																		child: Container(
																			margin: const EdgeInsets.only( bottom: 20, left: 12),
																			width: double.infinity,
																			child: Row(
																				mainAxisAlignment: MainAxisAlignment.spaceBetween,
																				children: [
																					Text(
																						"11:07",
																						style: TextStyle(
																							color: Color(0xFFFFFFE3),
																							fontSize: 12,
																							fontWeight: FontWeight.bold,
																						),
																					),
																					Container(
																						width: 56,
																						height: 16,
																						child: Image.network(
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/pbch9xuj_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																				]
																			),
																		),
																	),
                                  InkWell(
                                    onTap: () {
                                      // Navigate back to the previous screen
                                      if (Navigator.canPop(context)) {
                                        Navigator.pop(context);
                                      } else {
                                        // Optional: Handle case when already on root screen
                                        debugPrint("Already at root screen");
                                      }
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      margin: const EdgeInsets.only(
                                        bottom: 15,
                                        left: 12,
                                      ),
                                      width: 24,
                                      height: 24,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(24),
                                        child: Image.network(
                                          "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/l9qm4tj8_expires_30_days.png",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
																	IntrinsicWidth(
																		child: IntrinsicHeight(
																			child: Container(
																				margin: const EdgeInsets.only( bottom: 15, left: 12),
																				child: Row(
																					children: [
																						Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(20),
																							),
																							margin: const EdgeInsets.only( right: 12),
																							width: 24,
																							height: 24,
																							child: ClipRRect(
																								borderRadius: BorderRadius.circular(20),
																								child: Image.network(
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/robrvuwn_expires_30_days.png",
																									fit: BoxFit.fill,
																								)
																							)
																						),
																						Text(
																							"Fire Stations",
																							style: TextStyle(
																								color: Color(0xFFFFFFE3),
																								fontSize: 16,
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
													IntrinsicWidth(
														child: IntrinsicHeight(
															child: Container(
																margin: const EdgeInsets.only( bottom: 24, left: 13),
																child: Column(
																	crossAxisAlignment: CrossAxisAlignment.start,
																	children: [
																		Container(
																			margin: const EdgeInsets.only( bottom: 4, right: 166),
																			child: Text(
																				"Your location",
																				style: TextStyle(
																					color: Color(0xFF2C3439),
																					fontSize: 8,
																				),
																			),
																		),
																		IntrinsicWidth(
																			child: IntrinsicHeight(
																				child: Row(
																					children: [
																						Container(
																							margin: const EdgeInsets.only( right: 8),
																							width: 16,
																							height: 16,
																							child: Image.network(
																								"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/woke967a_expires_30_days.png",
																								fit: BoxFit.fill,
																							)
																						),
																						Container(
																							margin: const EdgeInsets.only( right: 10),
																							child: Text(
																								"Brgy. Baybay Tanza, City Proper",
																								style: TextStyle(
																									color: Color(0xFF2C3439),
																									fontSize: 12,
																								),
																							),
																						),
																						Container(
																							width: 16,
																							height: 16,
																							child: Image.network(
																								"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/dm1vr7rb_expires_30_days.png",
																								fit: BoxFit.fill,
																							)
																						),
																					]
																				),
																			),
																		),
																	]
																),
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															decoration: BoxDecoration(
																borderRadius: BorderRadius.circular(6),
																color: Color(0xFFFFFFE3),
															),
															padding: const EdgeInsets.only( top: 16, left: 12, right: 12),
															margin: const EdgeInsets.only( bottom: 24, left: 12, right: 12),
															width: double.infinity,
															child: Column(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	IntrinsicHeight(
																		child: Container(
																			padding: const EdgeInsets.only( bottom: 1),
																			margin: const EdgeInsets.only( bottom: 12),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					Text(
																						"Is someone/something in danger? ",
																						style: TextStyle(
																							color: Color(0xFF2C3439),
																							fontSize: 12,
																						),
																					),
																				]
																			),
																		),
																	),
																	InkWell(
																		onTap: () { print('Pressed'); },
																		child: IntrinsicHeight(
																			child: Container(
																				decoration: BoxDecoration(
																					border: Border.all(
																						color: Color(0xFFE05B4B),
																						width: 1,
																					),
																					borderRadius: BorderRadius.circular(24),
																					color: Color(0xFFE05B4B),
																				),
																				padding: const EdgeInsets.symmetric(vertical: 10),
																				margin: const EdgeInsets.only( bottom: 35),
																				width: double.infinity,
																				child: Row(
																					mainAxisAlignment: MainAxisAlignment.center,
																					children: [
																						Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(24),
																							),
																							margin: const EdgeInsets.only( right: 8),
																							width: 16,
																							height: 16,
																							child: ClipRRect(
																								borderRadius: BorderRadius.circular(24),
																								child: Image.network(
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/ijnm00zq_expires_30_days.png",
																									fit: BoxFit.fill,
																								)
																							)
																						),
																						Text(
																							"Report Fire Incident",
																							style: TextStyle(
																								color: Color(0xFFFFFFE3),
																								fontSize: 10,
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
													IntrinsicHeight(
														child: Container(
															margin: const EdgeInsets.only( bottom: 12, left: 13, right: 13),
															width: double.infinity,
															child: Row(
																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																children: [
																	Text(
																		"Fire responders near you ",
																		style: TextStyle(
																			color: Color(0xFF2C3439),
																			fontSize: 12,
																		),
																	),
																	Text(
																		"See all",
																		style: TextStyle(
																			color: Color(0xFFE05B4B),
																			fontSize: 8,
																		),
																	),
																]
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															margin: const EdgeInsets.only( bottom: 25, left: 13, right: 13),
															width: double.infinity,
															child: Stack(
																clipBehavior: Clip.none,
																children: [
																	Padding(
																		padding: const EdgeInsets.only( bottom: 142),
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.only( top: 38),
																						width: double.infinity,
																						decoration: BoxDecoration(
																							borderRadius: BorderRadius.circular(12),
																							image: DecorationImage(
																								image: NetworkImage("https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/urai5zk3_expires_30_days.png"),
																								fit: BoxFit.fill
																							),
																						),
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										decoration: BoxDecoration(
																											borderRadius: BorderRadius.circular(12),
																											color: Color(0xFFFFFFE3),
																										),
																										padding: const EdgeInsets.only( top: 62, right: 88),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.end,
																											children: [
																												Container(
																													decoration: BoxDecoration(
																														borderRadius: BorderRadius.circular(12),
																													),
																													margin: const EdgeInsets.only( bottom: 45),
																													width: 24,
																													height: 24,
																													child: ClipRRect(
																														borderRadius: BorderRadius.circular(12),
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/s4cjdadg_expires_30_days.png",
																															fit: BoxFit.fill,
																														)
																													)
																												),
																											]
																										),
																									),
																								),
																							]
																						),
																					),
																				),
																			]
																		),
																	),
																	Positioned(
																		bottom: 0,
																		left: 0,
																		right: 0,
																		child: IntrinsicHeight(
																			child: Container(
																				decoration: BoxDecoration(
																					borderRadius: BorderRadius.circular(12),
																					color: Color(0xFFFFFFE3),
																				),
																				padding: const EdgeInsets.only( top: 20, bottom: 20, right: 12),
																				width: double.infinity,
																				child: Column(
																					crossAxisAlignment: CrossAxisAlignment.start,
																					children: [
																						Container(
																							margin: const EdgeInsets.only( bottom: 4, left: 12),
																							child: Text(
																								"Federation Fire Iloilo",
																								style: TextStyle(
																									color: Color(0xFFE05B4B),
																									fontSize: 10,
																									fontWeight: FontWeight.bold,
																								),
																							),
																						),
																						IntrinsicWidth(
																							child: IntrinsicHeight(
																								child: Container(
																									padding: const EdgeInsets.only( bottom: 1),
																									margin: const EdgeInsets.only( bottom: 15, left: 12),
																									child: Column(
																										crossAxisAlignment: CrossAxisAlignment.start,
																										children: [
																											Text(
																												"Jalandoni Street, Corner Ledesma Street, City Proper",
																												style: TextStyle(
																													color: Color(0xFF2C3439),
																													fontSize: 8,
																												),
																											),
																										]
																									),
																								),
																							),
																						),
																						IntrinsicWidth(
																							child: IntrinsicHeight(
																								child: Container(
																									margin: const EdgeInsets.only( bottom: 12, left: 12),
																									child: Row(
																										children: [
																											IntrinsicWidth(
																												child: IntrinsicHeight(
																													child: Container(
																														margin: const EdgeInsets.only( right: 12),
																														child: Row(
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( right: 4),
																																	width: 12,
																																	height: 12,
																																	child: Image.network(
																																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/cy4x1xhe_expires_30_days.png",
																																		fit: BoxFit.fill,
																																	)
																																),
																																Text(
																																	"400 m",
																																	style: TextStyle(
																																		color: Color(0xFF2C3439),
																																		fontSize: 8,
																																	),
																																),
																															]
																														),
																													),
																												),
																											),
																											IntrinsicWidth(
																												child: IntrinsicHeight(
																													child: Container(
																														margin: const EdgeInsets.only( right: 12),
																														child: Row(
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( right: 4),
																																	width: 12,
																																	height: 12,
																																	child: Image.network(
																																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/ayqp1cqg_expires_30_days.png",
																																		fit: BoxFit.fill,
																																	)
																																),
																																Text(
																																	"3 - 5 minutes",
																																	style: TextStyle(
																																		color: Color(0xFF2C3439),
																																		fontSize: 8,
																																	),
																																),
																															]
																														),
																													),
																												),
																											),
																											IntrinsicWidth(
																												child: IntrinsicHeight(
																													child: Row(
																														children: [
																															Container(
																																margin: const EdgeInsets.only( right: 4),
																																width: 12,
																																height: 12,
																																child: Image.network(
																																	"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/utheqnua_expires_30_days.png",
																																	fit: BoxFit.fill,
																																)
																															),
																															Text(
																																"24/7 Operation Hours",
																																style: TextStyle(
																																	color: Color(0xFF2C3439),
																																	fontSize: 8,
																																),
																															),
																														]
																													),
																												),
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
																											color: Color(0xFFE05B4B),
																											width: 1,
																										),
																										borderRadius: BorderRadius.circular(40),
																										color: Color(0xFFFFFFFF),
																										boxShadow: [
																											BoxShadow(
																												color: Color(0x1CB94429),
																												blurRadius: 16,
																												offset: Offset(0, 4),
																											),
																										],
																									),
																									padding: const EdgeInsets.symmetric(vertical: 12),
																									margin: const EdgeInsets.only( left: 12),
																									width: double.infinity,
																									child: Row(
																										mainAxisAlignment: MainAxisAlignment.center,
																										children: [
																											Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(40),
																												),
																												margin: const EdgeInsets.only( right: 8),
																												width: 16,
																												height: 16,
																												child: ClipRRect(
																													borderRadius: BorderRadius.circular(40),
																													child: Image.network(
																														"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/79tgtij1_expires_30_days.png",
																														fit: BoxFit.fill,
																													)
																												)
																											),
																											Text(
																												"Call 337-6918",
																												style: TextStyle(
																													color: Color(0xFFE05B4B),
																													fontSize: 10,
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
																	),
																]
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															padding: const EdgeInsets.only( top: 38),
															margin: const EdgeInsets.symmetric(horizontal: 13),
															width: double.infinity,
															decoration: BoxDecoration(
																borderRadius: BorderRadius.circular(12),
																image: DecorationImage(
																	image: NetworkImage("https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/flsienu2_expires_30_days.png"),
																	fit: BoxFit.fill
																),
															),
															child: Column(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	Container(
																		decoration: BoxDecoration(
																			borderRadius: BorderRadius.circular(12),
																			color: Color(0xFFFFFFE3),
																		),
																		height: 26,
																		width: double.infinity,
																		child: SizedBox(),
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