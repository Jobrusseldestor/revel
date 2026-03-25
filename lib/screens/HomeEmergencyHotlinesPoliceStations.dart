import 'package:flutter/material.dart';
class HomeEmergencyHotlinesPoliceStations extends StatefulWidget {
	const HomeEmergencyHotlinesPoliceStations({super.key});
	@override
	HomeEmergencyHotlinesPoliceStationsState createState() => HomeEmergencyHotlinesPoliceStationsState();
}
class HomeEmergencyHotlinesPoliceStationsState extends State<HomeEmergencyHotlinesPoliceStations> {
	String textField1 = '';
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
											borderRadius: BorderRadius.circular(24),
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
															color: Color(0xFF7B5068),
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
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/127ecmto_expires_30_days.png",
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
																								borderRadius: BorderRadius.circular(24),
																							),
																							margin: const EdgeInsets.only( right: 12),
																							width: 24,
																							height: 24,
																							child: ClipRRect(
																								borderRadius: BorderRadius.circular(24),
																								child: Image.network(
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/7ki4y9kl_expires_30_days.png",
																									fit: BoxFit.fill,
																								)
																							)
																						),
																						Text(
																							"Police Stations",
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
													IntrinsicHeight(
														child: Container(
															decoration: BoxDecoration(
																borderRadius: BorderRadius.circular(40),
																color: Color(0xFFFFFFE3),
															),
															margin: const EdgeInsets.only( bottom: 12, left: 12, right: 12),
															width: double.infinity,
															child: Row(
																children: [
																	Container(
																		decoration: BoxDecoration(
																			borderRadius: BorderRadius.circular(40),
																		),
																		margin: const EdgeInsets.symmetric(horizontal: 12),
																		width: 24,
																		height: 24,
																		child: ClipRRect(
																			borderRadius: BorderRadius.circular(40),
																			child: Image.network(
																				"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/iwv91ur5_expires_30_days.png",
																				fit: BoxFit.fill,
																			)
																		)
																	),
																	Expanded(
																		child: IntrinsicHeight(
																			child: Container(
																				alignment: Alignment.center,
																				margin: const EdgeInsets.only( right: 4),
																				width: double.infinity,
																				child: TextField(
																					style: TextStyle(
																						color: Color(0xFF2C3439),
																						fontSize: 10,
																					),
																					onChanged: (value) { 
																						setState(() { textField1 = value; });
																					},
																					decoration: InputDecoration(
																						hintText: "Search fire stations",
																						isDense: true,
																						contentPadding: const EdgeInsets.symmetric(vertical: 15),
																						border: InputBorder.none,
																						focusedBorder: InputBorder.none,
																						filled: false,
																					),
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
															margin: const EdgeInsets.only( bottom: 22, left: 12, right: 12),
															width: double.infinity,
															child: Column(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	IntrinsicHeight(
																		child: Container(
																			decoration: BoxDecoration(
																				borderRadius: BorderRadius.circular(12),
																				color: Color(0xFFFFFFE3),
																			),
																			padding: const EdgeInsets.only( top: 20, bottom: 20, right: 12),
																			margin: const EdgeInsets.only( bottom: 24),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 12, left: 12),
																							width: double.infinity,
																							child: Row(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.only( right: 27),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															margin: const EdgeInsets.only( bottom: 4),
																															child: Text(
																																"Iloilo City Police Station 1",
																																style: TextStyle(
																																	color: Color(0xFF7B5068),
																																	fontSize: 10,
																																	fontWeight: FontWeight.bold,
																																),
																															),
																														),
																														IntrinsicHeight(
																															child: Container(
																																padding: const EdgeInsets.only( bottom: 1, right: 26),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Text(
																																			"Gen. Luna Street, City Proper, Iloilo City",
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
																									Container(
																										width: 54,
																										height: 24,
																										child: Image.network(
																											"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/q50nppub_expires_30_days.png",
																											fit: BoxFit.fill,
																										)
																									),
																								]
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
																													margin: const EdgeInsets.only( right: 8),
																													child: Row(
																														children: [
																															Container(
																																margin: const EdgeInsets.only( right: 4),
																																width: 12,
																																height: 12,
																																child: Image.network(
																																	"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/6pfk9cmo_expires_30_days.png",
																																	fit: BoxFit.fill,
																																)
																															),
																															Text(
																																"2.4 kms",
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
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/zpubk49o_expires_30_days.png",
																																fit: BoxFit.fill,
																															)
																														),
																														Text(
																															"5-10 mins ",
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
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 12, left: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 8),
																										child: Text(
																											"Other Services Offered",
																											style: TextStyle(
																												color: Color(0xFF7B5068),
																												fontSize: 8,
																												fontWeight: FontWeight.bold,
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Row(
																												children: [
																													Expanded(
																														child: InkWell(
																															onTap: () { print('Pressed'); },
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		borderRadius: BorderRadius.circular(12),
																																		color: Color(0xFFF5F5DB),
																																	),
																																	padding: const EdgeInsets.symmetric(vertical: 4),
																																	margin: const EdgeInsets.only( right: 12),
																																	width: double.infinity,
																																	child: Row(
																																		mainAxisAlignment: MainAxisAlignment.center,
																																		children: [
																																			Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(12),
																																				),
																																				margin: const EdgeInsets.only( right: 4),
																																				width: 12,
																																				height: 12,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(12),
																																					child: Image.network(
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/ywxqi1ki_expires_30_days.png",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																			Text(
																																				"Emergency Response",
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
																													),
																													Expanded(
																														child: InkWell(
																															onTap: () { print('Pressed'); },
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		borderRadius: BorderRadius.circular(12),
																																		color: Color(0xFFF5F5DB),
																																	),
																																	padding: const EdgeInsets.symmetric(vertical: 4),
																																	margin: const EdgeInsets.only( right: 12),
																																	width: double.infinity,
																																	child: Row(
																																		mainAxisAlignment: MainAxisAlignment.center,
																																		children: [
																																			Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(12),
																																				),
																																				margin: const EdgeInsets.only( right: 4),
																																				width: 12,
																																				height: 12,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(12),
																																					child: Image.network(
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/4kcb3lgz_expires_30_days.png",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																			Text(
																																				"Clearances & Permits",
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
																													),
																													InkWell(
																														onTap: () { print('Pressed'); },
																														child: IntrinsicWidth(
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		borderRadius: BorderRadius.circular(12),
																																		color: Color(0xFFF5F5DB),
																																	),
																																	padding: const EdgeInsets.all(4),
																																	margin: const EdgeInsets.only( right: 28),
																																	child: Row(
																																		children: [
																																			Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(12),
																																				),
																																				margin: const EdgeInsets.only( right: 4),
																																				width: 12,
																																				height: 12,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(12),
																																					child: Image.network(
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/u90jqlu9_expires_30_days.png",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																			Text(
																																				"Lost & Found",
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
																													),
																												]
																											),
																										),
																									),
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( left: 12),
																							width: double.infinity,
																							child: Row(
																								children: [
																									Expanded(
																										child: InkWell(
																											onTap: () { print('Pressed'); },
																											child: IntrinsicHeight(
																												child: Container(
																													decoration: BoxDecoration(
																														border: Border.all(
																															color: Color(0xFF7B5068),
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
																													margin: const EdgeInsets.only( right: 12),
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
																																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/y8fhwbaj_expires_30_days.png",
																																		fit: BoxFit.fill,
																																	)
																																)
																															),
																															Text(
																																"Call 0998 598 6242",
																																style: TextStyle(
																																	color: Color(0xFF7B5068),
																																	fontSize: 10,
																																	fontWeight: FontWeight.bold,
																																),
																															),
																														]
																													),
																												),
																											),
																										),
																									),
																									Expanded(
																										child: InkWell(
																											onTap: () { print('Pressed'); },
																											child: IntrinsicHeight(
																												child: Container(
																													decoration: BoxDecoration(
																														borderRadius: BorderRadius.circular(40),
																														color: Color(0xFF7B5068),
																														boxShadow: [
																															BoxShadow(
																																color: Color(0x1C614F89),
																																blurRadius: 16,
																																offset: Offset(0, 4),
																															),
																														],
																													),
																													padding: const EdgeInsets.symmetric(vertical: 12),
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
																																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/8lu5ihgp_expires_30_days.png",
																																		fit: BoxFit.fill,
																																	)
																																)
																															),
																															Text(
																																"Call Hotline 337-0400",
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
																									),
																								]
																							),
																						),
																					),
																				]
																			),
																		),
																	),
																	IntrinsicHeight(
																		child: Container(
																			decoration: BoxDecoration(
																				borderRadius: BorderRadius.circular(12),
																				color: Color(0xFFFFFFE3),
																			),
																			padding: const EdgeInsets.only( top: 20, bottom: 20, right: 12),
																			margin: const EdgeInsets.only( bottom: 24),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 12, left: 12),
																							width: double.infinity,
																							child: Row(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.only( right: 27),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															margin: const EdgeInsets.only( bottom: 4),
																															child: Text(
																																"Iloilo City Police Station 3",
																																style: TextStyle(
																																	color: Color(0xFF7B5068),
																																	fontSize: 10,
																																	fontWeight: FontWeight.bold,
																																),
																															),
																														),
																														IntrinsicHeight(
																															child: Container(
																																padding: const EdgeInsets.only( bottom: 1, right: 42),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Text(
																																			"Washington Street, Jaro, Iloilo City",
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
																									Container(
																										width: 54,
																										height: 24,
																										child: Image.network(
																											"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/m6j4na21_expires_30_days.png",
																											fit: BoxFit.fill,
																										)
																									),
																								]
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
																													margin: const EdgeInsets.only( right: 8),
																													child: Row(
																														children: [
																															Container(
																																margin: const EdgeInsets.only( right: 4),
																																width: 12,
																																height: 12,
																																child: Image.network(
																																	"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/zlwttkh2_expires_30_days.png",
																																	fit: BoxFit.fill,
																																)
																															),
																															Text(
																																"2.4 kms",
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
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/4pjb2y8b_expires_30_days.png",
																																fit: BoxFit.fill,
																															)
																														),
																														Text(
																															"5-10 mins ",
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
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 12, left: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 8),
																										child: Text(
																											"Other Services Offered",
																											style: TextStyle(
																												color: Color(0xFF7B5068),
																												fontSize: 8,
																												fontWeight: FontWeight.bold,
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Row(
																												children: [
																													Expanded(
																														child: InkWell(
																															onTap: () { print('Pressed'); },
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		borderRadius: BorderRadius.circular(12),
																																		color: Color(0xFFF5F5DB),
																																	),
																																	padding: const EdgeInsets.symmetric(vertical: 4),
																																	margin: const EdgeInsets.only( right: 12),
																																	width: double.infinity,
																																	child: Row(
																																		mainAxisAlignment: MainAxisAlignment.center,
																																		children: [
																																			Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(12),
																																				),
																																				margin: const EdgeInsets.only( right: 4),
																																				width: 12,
																																				height: 12,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(12),
																																					child: Image.network(
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/qdsgz1vq_expires_30_days.png",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																			Text(
																																				"Emergency Response",
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
																													),
																													Expanded(
																														child: InkWell(
																															onTap: () { print('Pressed'); },
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		borderRadius: BorderRadius.circular(12),
																																		color: Color(0xFFF5F5DB),
																																	),
																																	padding: const EdgeInsets.symmetric(vertical: 4),
																																	margin: const EdgeInsets.only( right: 12),
																																	width: double.infinity,
																																	child: Row(
																																		mainAxisAlignment: MainAxisAlignment.center,
																																		children: [
																																			Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(12),
																																				),
																																				margin: const EdgeInsets.only( right: 4),
																																				width: 12,
																																				height: 12,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(12),
																																					child: Image.network(
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/cbjo2ogd_expires_30_days.png",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																			Text(
																																				"Clearances & Permits",
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
																													),
																													InkWell(
																														onTap: () { print('Pressed'); },
																														child: IntrinsicWidth(
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		borderRadius: BorderRadius.circular(12),
																																		color: Color(0xFFF5F5DB),
																																	),
																																	padding: const EdgeInsets.all(4),
																																	margin: const EdgeInsets.only( right: 28),
																																	child: Row(
																																		children: [
																																			Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(12),
																																				),
																																				margin: const EdgeInsets.only( right: 4),
																																				width: 12,
																																				height: 12,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(12),
																																					child: Image.network(
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/l3dpru0x_expires_30_days.png",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																			Text(
																																				"Lost & Found",
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
																													),
																												]
																											),
																										),
																									),
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( left: 12),
																							width: double.infinity,
																							child: Row(
																								children: [
																									Expanded(
																										child: InkWell(
																											onTap: () { print('Pressed'); },
																											child: IntrinsicHeight(
																												child: Container(
																													decoration: BoxDecoration(
																														border: Border.all(
																															color: Color(0xFF7B5068),
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
																													margin: const EdgeInsets.only( right: 12),
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
																																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/hdrk5x2y_expires_30_days.png",
																																		fit: BoxFit.fill,
																																	)
																																)
																															),
																															Text(
																																"Call 0998 598 6246",
																																style: TextStyle(
																																	color: Color(0xFF7B5068),
																																	fontSize: 10,
																																	fontWeight: FontWeight.bold,
																																),
																															),
																														]
																													),
																												),
																											),
																										),
																									),
																									Expanded(
																										child: InkWell(
																											onTap: () { print('Pressed'); },
																											child: IntrinsicHeight(
																												child: Container(
																													decoration: BoxDecoration(
																														borderRadius: BorderRadius.circular(40),
																														color: Color(0xFF7B5068),
																														boxShadow: [
																															BoxShadow(
																																color: Color(0x1C614F89),
																																blurRadius: 16,
																																offset: Offset(0, 4),
																															),
																														],
																													),
																													padding: const EdgeInsets.symmetric(vertical: 12),
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
																																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/g3qrvbu5_expires_30_days.png",
																																		fit: BoxFit.fill,
																																	)
																																)
																															),
																															Text(
																																"Call Hotline 329-7958",
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
																									),
																								]
																							),
																						),
																					),
																				]
																			),
																		),
																	),
																	IntrinsicHeight(
																		child: Container(
																			decoration: BoxDecoration(
																				borderRadius: BorderRadius.circular(12),
																				color: Color(0xFFFFFFE3),
																			),
																			padding: const EdgeInsets.only( top: 16, right: 12),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 12, left: 12),
																							width: double.infinity,
																							child: Row(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.only( right: 27),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															margin: const EdgeInsets.only( bottom: 4),
																															child: Text(
																																"Iloilo City Police Station 6",
																																style: TextStyle(
																																	color: Color(0xFF7B5068),
																																	fontSize: 10,
																																	fontWeight: FontWeight.bold,
																																),
																															),
																														),
																														IntrinsicHeight(
																															child: Container(
																																padding: const EdgeInsets.only( bottom: 1, right: 59),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Text(
																																			"Yulo Drive, Arevalo, Iloilo City",
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
																									Container(
																										width: 54,
																										height: 24,
																										child: Image.network(
																											"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/tdfilj2n_expires_30_days.png",
																											fit: BoxFit.fill,
																										)
																									),
																								]
																							),
																						),
																					),
																					IntrinsicWidth(
																						child: IntrinsicHeight(
																							child: Container(
																								margin: const EdgeInsets.only( left: 12),
																								child: Row(
																									children: [
																										IntrinsicWidth(
																											child: IntrinsicHeight(
																												child: Container(
																													margin: const EdgeInsets.only( right: 8),
																													child: Row(
																														children: [
																															Container(
																																margin: const EdgeInsets.only( right: 4),
																																width: 12,
																																height: 3,
																																child: Image.network(
																																	"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/ynw1w7iu_expires_30_days.png",
																																	fit: BoxFit.fill,
																																)
																															),
																															Text(
																																"2.4 kms",
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
																															height: 3,
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/zips786b_expires_30_days.png",
																																fit: BoxFit.fill,
																															)
																														),
																														Text(
																															"5-10 mins ",
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
																				]
																			),
																		),
																	),
																]
															),
														),
													),
													Container(
														margin: const EdgeInsets.symmetric(horizontal: 24),
														height: 46,
														width: double.infinity,
														child: SizedBox(),
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