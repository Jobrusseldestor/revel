import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
	const SignIn({super.key});
	@override
	SignInState createState() => SignInState();
}
class SignInState extends State<SignIn> {
	String textField1 = '';
	String textField2 = '';
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
											padding: const EdgeInsets.only( top: 2),
											child: Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													IntrinsicHeight(
														child: Container(
															margin: const EdgeInsets.only( bottom: 251, left: 12, right: 12),
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/8z4toqqm_expires_30_days.png",
																			fit: BoxFit.fill,
																		)
																	),
																]
															),
														),
													),
													Container(
														margin: const EdgeInsets.only( bottom: 12, left: 12),
														child: Text(
															"Welcome back!",
															style: TextStyle(
																color: Color(0xFF2C3439),
																fontSize: 24,
																fontWeight: FontWeight.bold,
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															alignment: Alignment.center,
															decoration: BoxDecoration(
																borderRadius: BorderRadius.circular(12),
																color: Color(0xFFFFFFE3),
															),
															margin: const EdgeInsets.only( bottom: 24, left: 12, right: 12),
															width: double.infinity,
															child: TextField(
																style: TextStyle(
																	color: Color(0xFF2C3439),
																	fontSize: 12,
																),
																onChanged: (value) { 
																	setState(() { textField1 = value; });
																},
																decoration: InputDecoration(
																	hintText: "Email or phone number",
																	isDense: true,
																	contentPadding: const EdgeInsets.only( top: 16, bottom: 16, left: 14, right: 14),
																	border: InputBorder.none,
																	focusedBorder: InputBorder.none,
																	filled: false,
																),
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															alignment: Alignment.center,
															decoration: BoxDecoration(
																borderRadius: BorderRadius.circular(12),
																color: Color(0xFFFFFFE3),
															),
															margin: const EdgeInsets.only( bottom: 12, left: 12, right: 12),
															width: double.infinity,
															child: TextField(
																style: TextStyle(
																	color: Color(0xFF2C3439),
																	fontSize: 12,
																),
																onChanged: (value) { 
																	setState(() { textField2 = value; });
																},
																decoration: InputDecoration(
																	hintText: "Password",
																	isDense: true,
																	contentPadding: const EdgeInsets.only( top: 16, bottom: 16, left: 12, right: 12),
																	border: InputBorder.none,
																	focusedBorder: InputBorder.none,
																	filled: false,
																),
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															margin: const EdgeInsets.only( bottom: 32, left: 12, right: 12),
															width: double.infinity,
															child: Row(
																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																children: [
																	IntrinsicWidth(
																		child: IntrinsicHeight(
																			child: Row(
																				children: [
																					Container(
																						margin: const EdgeInsets.only( right: 4),
																						width: 24,
																						height: 24,
																						child: Image.network(
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/9lh5a8fg_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																					Text(
																						"Remember my credentials",
																						style: TextStyle(
																							color: Color(0xFF2C3439),
																							fontSize: 10,
																						),
																					),
																				]
																			),
																		),
																	),
																	Text(
																		"Trouble logging in?",
																		style: TextStyle(
																			color: Color(0xFFB94429),
																			fontSize: 10,
																		),
																	),
																]
															),
														),
													),
													InkWell(
														onTap: () {  Navigator.pushNamed(context, '/mainmenu'); },
														child: IntrinsicHeight(
															child: Container(
																decoration: BoxDecoration(
																	borderRadius: BorderRadius.circular(40),
																	color: Color(0xFFB94429),
																),
																padding: const EdgeInsets.symmetric(vertical: 16),
																margin: const EdgeInsets.only( bottom: 24, left: 12, right: 12),
																width: double.infinity,
																child: Column(
																	children: [
																		Text(
																			"Sign in",
																			style: TextStyle(
																				color: Color(0xFFFFFFFF),
																				fontSize: 12,
																				fontWeight: FontWeight.bold,
																			),
																		),
																	]
																),
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															margin: const EdgeInsets.only( bottom: 20),
															width: double.infinity,
															child: Column(
																children: [
																	IntrinsicWidth(
																		child: IntrinsicHeight(
																			child: Row(
																				children: [
																					Container(
																						margin: const EdgeInsets.only( right: 12),
																						width: 64,
																						height: 1,
																						child: Image.network(
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/sq05aa6w_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																					Container(
																						margin: const EdgeInsets.only( right: 14),
																						child: Text(
																							"or continue with",
																							style: TextStyle(
																								color: Color(0xFF2C3439),
																								fontSize: 10,
																							),
																						),
																					),
																					Container(
																						width: 64,
																						height: 1,
																						child: Image.network(
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/cwpd6xtk_expires_30_days.png",
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
													IntrinsicHeight(
														child: Container(
															margin: const EdgeInsets.only( bottom: 49),
															width: double.infinity,
															child: Column(
																children: [
																	IntrinsicWidth(
																		child: IntrinsicHeight(
																			child: Row(
																				children: [
																					Container(
																						margin: const EdgeInsets.only( right: 24),
																						width: 26,
																						height: 32,
																						child: Image.network(
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/ugziaatq_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																					Container(
																						margin: const EdgeInsets.only( right: 24),
																						width: 24,
																						height: 24,
																						child: Image.network(
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/dgdl6dg4_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																					Container(
																						width: 24,
																						height: 24,
																						child: Image.network(
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/iq3lq6j5_expires_30_days.png",
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
													IntrinsicHeight(
														child: Container(
															margin: const EdgeInsets.only( bottom: 48),
															width: double.infinity,
															child: Column(
																children: [
																	Text(
																		"I need an account first",
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