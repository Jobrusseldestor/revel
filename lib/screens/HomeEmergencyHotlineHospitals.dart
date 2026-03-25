import 'package:flutter/material.dart';

class HomeEmergencyHotlinesHospitals extends StatefulWidget {
  const HomeEmergencyHotlinesHospitals({super.key});
  @override
  HomeEmergencyHotlinesHospitalsState createState() =>
      HomeEmergencyHotlinesHospitalsState();
}

class HomeEmergencyHotlinesHospitalsState
    extends State<HomeEmergencyHotlinesHospitals> {
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
                              color: Color(0xFFA1414A),
                              padding: const EdgeInsets.only(top: 2, right: 12),
                              margin: const EdgeInsets.only(bottom: 24),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IntrinsicHeight(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        bottom: 20,
                                        left: 12,
                                      ),
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "11:07",
                                            style: TextStyle(
                                              color: Color(0xFFFFFFE3),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              width: 56,
                                              height: 16,
                                              child: Image.network(
                                                "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/qd6lfig1_expires_30_days.png",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ],
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
                                        margin: const EdgeInsets.only(
                                          bottom: 15,
                                          left: 12,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(24),
                                              ),
                                              margin: const EdgeInsets.only(
                                                right: 12,
                                              ),
                                              width: 24,
                                              height: 24,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(24),
                                                child: Image.network(
                                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/5nwxwh65_expires_30_days.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "Hospitals",
                                              style: TextStyle(
                                                color: Color(0xFFFFFFE3),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFFFFFE3),
                              ),
                              margin: const EdgeInsets.only(
                                bottom: 12,
                                left: 12,
                                right: 12,
                              ),
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                    ),
                                    width: 24,
                                    height: 24,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.network(
                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/eqmcusp9_expires_30_days.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: IntrinsicHeight(
                                      child: Container(
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(right: 4),
                                        width: double.infinity,
                                        child: TextField(
                                          style: TextStyle(
                                            color: Color(0xFF2C3439),
                                            fontSize: 10,
                                          ),
                                          onChanged: (value) {
                                            setState(() {
                                              textField1 = value;
                                            });
                                          },
                                          decoration: InputDecoration(
                                            hintText: "Search hospitals",
                                            isDense: true,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                  vertical: 15,
                                                ),
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            filled: false,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFFFFFFE3),
                              ),
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                right: 12,
                              ),
                              margin: const EdgeInsets.only(
                                bottom: 20,
                                left: 12,
                                right: 12,
                              ),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IntrinsicHeight(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        bottom: 12,
                                        left: 12,
                                      ),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: IntrinsicHeight(
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                  bottom: 3,
                                                ),
                                                margin: const EdgeInsets.only(
                                                  right: 48,
                                                ),
                                                width: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                            bottom: 4,
                                                          ),
                                                      child: Text(
                                                        "Western Visayas Medical Center",
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFFA1414A,
                                                          ),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    IntrinsicWidth(
                                                      child: IntrinsicHeight(
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                bottom: 1,
                                                                right: 46,
                                                              ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Q. Abeto Street, Mandurriao, Iloilo City",
                                                                style: TextStyle(
                                                                  color: Color(
                                                                    0xFF2C3439,
                                                                  ),
                                                                  fontSize: 8,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 24,
                                            height: 24,
                                            child: Image.network(
                                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/19mhqo3z_expires_30_days.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  IntrinsicWidth(
                                    child: IntrinsicHeight(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          bottom: 12,
                                          left: 12,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            IntrinsicWidth(
                                              child: IntrinsicHeight(
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                    bottom: 8,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      IntrinsicWidth(
                                                        child: IntrinsicHeight(
                                                          child: Container(
                                                            margin:
                                                                const EdgeInsets.only(
                                                                  right: 12,
                                                                ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  margin:
                                                                      const EdgeInsets.only(
                                                                        right:
                                                                            4,
                                                                      ),
                                                                  width: 12,
                                                                  height: 12,
                                                                  child: Image.network(
                                                                    "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/8fl3berc_expires_30_days.png",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "2.4 kms",
                                                                  style: TextStyle(
                                                                    color: Color(
                                                                      0xFF2C3439,
                                                                    ),
                                                                    fontSize: 8,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      IntrinsicWidth(
                                                        child: IntrinsicHeight(
                                                          child: Container(
                                                            margin:
                                                                const EdgeInsets.only(
                                                                  right: 12,
                                                                ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  margin:
                                                                      const EdgeInsets.only(
                                                                        right:
                                                                            4,
                                                                      ),
                                                                  width: 12,
                                                                  height: 12,
                                                                  child: Image.network(
                                                                    "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/n1sga1ur_expires_30_days.png",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "10-15 minutes",
                                                                  style: TextStyle(
                                                                    color: Color(
                                                                      0xFF2C3439,
                                                                    ),
                                                                    fontSize: 8,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          print('Pressed');
                                                        },
                                                        child: IntrinsicWidth(
                                                          child: IntrinsicHeight(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          24,
                                                                        ),
                                                                    color: Color(
                                                                      0x1AFFC735,
                                                                    ),
                                                                  ),
                                                              padding:
                                                                  const EdgeInsets.all(
                                                                    4,
                                                                  ),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    margin:
                                                                        const EdgeInsets.only(
                                                                          right:
                                                                              4,
                                                                        ),
                                                                    width: 8,
                                                                    height: 8,
                                                                    child: Image.network(
                                                                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/j0tu7i3p_expires_30_days.png",
                                                                      fit: BoxFit
                                                                          .fill,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Limited Beds Available",
                                                                    style: TextStyle(
                                                                      color: Color(
                                                                        0xFFA1414A,
                                                                      ),
                                                                      fontSize:
                                                                          8,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            IntrinsicWidth(
                                              child: IntrinsicHeight(
                                                child: Row(
                                                  children: [
                                                    IntrinsicWidth(
                                                      child: IntrinsicHeight(
                                                        child: Container(
                                                          margin:
                                                              const EdgeInsets.only(
                                                                right: 12,
                                                              ),
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                margin:
                                                                    const EdgeInsets.only(
                                                                      right: 4,
                                                                    ),
                                                                width: 12,
                                                                height: 12,
                                                                child: Image.network(
                                                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/n6fblgy9_expires_30_days.png",
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                              Text(
                                                                "24/7 Emergency Services",
                                                                style: TextStyle(
                                                                  color: Color(
                                                                    0xFF2C3439,
                                                                  ),
                                                                  fontSize: 8,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    IntrinsicWidth(
                                                      child: IntrinsicHeight(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              margin:
                                                                  const EdgeInsets.only(
                                                                    right: 4,
                                                                  ),
                                                              width: 12,
                                                              height: 12,
                                                              child: Image.network(
                                                                "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/0xegurt3_expires_30_days.png",
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                            Text(
                                                              "8:00 AM - 5:00 PM Clinic Hours",
                                                              style: TextStyle(
                                                                color: Color(
                                                                  0xFF2C3439,
                                                                ),
                                                                fontSize: 8,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  IntrinsicHeight(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 12),
                                      width: double.infinity,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                print('Pressed');
                                              },
                                              child: IntrinsicHeight(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Color(0xFFA1414A),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          40,
                                                        ),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        vertical: 12,
                                                      ),
                                                  margin: const EdgeInsets.only(
                                                    right: 12,
                                                  ),
                                                  width: double.infinity,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                        ),
                                                        margin:
                                                            const EdgeInsets.only(
                                                              right: 8,
                                                            ),
                                                        width: 16,
                                                        height: 16,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                          child: Image.network(
                                                            "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/um8usfyd_expires_30_days.png",
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "Book an appointment",
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFFA1414A,
                                                          ),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                print('Pressed');
                                              },
                                              child: IntrinsicHeight(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          40,
                                                        ),
                                                    color: Color(0xFFA1414A),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        vertical: 12,
                                                      ),
                                                  width: double.infinity,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                        ),
                                                        margin:
                                                            const EdgeInsets.only(
                                                              right: 8,
                                                            ),
                                                        width: 16,
                                                        height: 16,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                          child: Image.network(
                                                            "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/dkpd3kyq_expires_30_days.png",
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "Call 321-2841",
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFFFFFFE3,
                                                          ),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFFFFFFE3),
                              ),
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                right: 12,
                              ),
                              margin: const EdgeInsets.only(
                                bottom: 20,
                                left: 12,
                                right: 12,
                              ),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IntrinsicHeight(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        bottom: 12,
                                        left: 12,
                                      ),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: IntrinsicHeight(
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                  bottom: 3,
                                                  right: 31,
                                                ),
                                                margin: const EdgeInsets.only(
                                                  right: 48,
                                                ),
                                                width: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                            bottom: 4,
                                                          ),
                                                      width: double.infinity,
                                                      child: Text(
                                                        "Western Visayas State University Medical Center",
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFFA1414A,
                                                          ),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    IntrinsicWidth(
                                                      child: IntrinsicHeight(
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                bottom: 1,
                                                                right: 73,
                                                              ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "E. Lopez Street, Jaro, Iloilo City",
                                                                style: TextStyle(
                                                                  color: Color(
                                                                    0xFF2C3439,
                                                                  ),
                                                                  fontSize: 8,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 24,
                                            height: 24,
                                            child: Image.network(
                                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/bk8nh859_expires_30_days.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  IntrinsicWidth(
                                    child: IntrinsicHeight(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          bottom: 12,
                                          left: 12,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            IntrinsicWidth(
                                              child: IntrinsicHeight(
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                    bottom: 8,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      IntrinsicWidth(
                                                        child: IntrinsicHeight(
                                                          child: Container(
                                                            margin:
                                                                const EdgeInsets.only(
                                                                  right: 12,
                                                                ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  margin:
                                                                      const EdgeInsets.only(
                                                                        right:
                                                                            4,
                                                                      ),
                                                                  width: 12,
                                                                  height: 12,
                                                                  child: Image.network(
                                                                    "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/v4ixu3p5_expires_30_days.png",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "2.4 kms",
                                                                  style: TextStyle(
                                                                    color: Color(
                                                                      0xFF2C3439,
                                                                    ),
                                                                    fontSize: 8,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      IntrinsicWidth(
                                                        child: IntrinsicHeight(
                                                          child: Container(
                                                            margin:
                                                                const EdgeInsets.only(
                                                                  right: 12,
                                                                ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  margin:
                                                                      const EdgeInsets.only(
                                                                        right:
                                                                            4,
                                                                      ),
                                                                  width: 12,
                                                                  height: 12,
                                                                  child: Image.network(
                                                                    "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/y4tr3582_expires_30_days.png",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "10-15 minutes",
                                                                  style: TextStyle(
                                                                    color: Color(
                                                                      0xFF2C3439,
                                                                    ),
                                                                    fontSize: 8,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          print('Pressed');
                                                        },
                                                        child: IntrinsicWidth(
                                                          child: IntrinsicHeight(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          24,
                                                                        ),
                                                                    color: Color(
                                                                      0x1AFFC735,
                                                                    ),
                                                                  ),
                                                              padding:
                                                                  const EdgeInsets.all(
                                                                    4,
                                                                  ),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    margin:
                                                                        const EdgeInsets.only(
                                                                          right:
                                                                              4,
                                                                        ),
                                                                    width: 8,
                                                                    height: 8,
                                                                    child: Image.network(
                                                                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/32oacqvj_expires_30_days.png",
                                                                      fit: BoxFit
                                                                          .fill,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Limited Beds Available",
                                                                    style: TextStyle(
                                                                      color: Color(
                                                                        0xFFA1414A,
                                                                      ),
                                                                      fontSize:
                                                                          8,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            IntrinsicWidth(
                                              child: IntrinsicHeight(
                                                child: Row(
                                                  children: [
                                                    IntrinsicWidth(
                                                      child: IntrinsicHeight(
                                                        child: Container(
                                                          margin:
                                                              const EdgeInsets.only(
                                                                right: 12,
                                                              ),
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                margin:
                                                                    const EdgeInsets.only(
                                                                      right: 4,
                                                                    ),
                                                                width: 12,
                                                                height: 12,
                                                                child: Image.network(
                                                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/oae0etfb_expires_30_days.png",
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                              Text(
                                                                "24/7 Emergency Services",
                                                                style: TextStyle(
                                                                  color: Color(
                                                                    0xFF2C3439,
                                                                  ),
                                                                  fontSize: 8,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    IntrinsicWidth(
                                                      child: IntrinsicHeight(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              margin:
                                                                  const EdgeInsets.only(
                                                                    right: 4,
                                                                  ),
                                                              width: 12,
                                                              height: 12,
                                                              child: Image.network(
                                                                "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/3x3h3vle_expires_30_days.png",
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                            Text(
                                                              "8:00 AM - 5:00 PM Clinic Hours",
                                                              style: TextStyle(
                                                                color: Color(
                                                                  0xFF2C3439,
                                                                ),
                                                                fontSize: 8,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  IntrinsicHeight(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 12),
                                      width: double.infinity,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                print('Pressed');
                                              },
                                              child: IntrinsicHeight(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Color(0xFFA1414A),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          40,
                                                        ),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        vertical: 12,
                                                      ),
                                                  margin: const EdgeInsets.only(
                                                    right: 12,
                                                  ),
                                                  width: double.infinity,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                        ),
                                                        margin:
                                                            const EdgeInsets.only(
                                                              right: 8,
                                                            ),
                                                        width: 16,
                                                        height: 16,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                          child: Image.network(
                                                            "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/mro9k6b6_expires_30_days.png",
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "Book an appointment",
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFFA1414A,
                                                          ),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                print('Pressed');
                                              },
                                              child: IntrinsicHeight(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          40,
                                                        ),
                                                    color: Color(0xFFA1414A),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        vertical: 12,
                                                      ),
                                                  width: double.infinity,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                        ),
                                                        margin:
                                                            const EdgeInsets.only(
                                                              right: 8,
                                                            ),
                                                        width: 16,
                                                        height: 16,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                          child: Image.network(
                                                            "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/45k5vw2t_expires_30_days.png",
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "Call 320-2431",
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFFFFFFE3,
                                                          ),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFFFFFFE3),
                              ),
                              padding: const EdgeInsets.only(
                                top: 16,
                                right: 12,
                              ),
                              margin: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IntrinsicHeight(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        bottom: 12,
                                        left: 12,
                                      ),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: IntrinsicHeight(
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                  bottom: 3,
                                                ),
                                                margin: const EdgeInsets.only(
                                                  right: 48,
                                                ),
                                                width: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                            bottom: 4,
                                                          ),
                                                      child: Text(
                                                        "Iloilo Mission Hospital",
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFFA1414A,
                                                          ),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    IntrinsicWidth(
                                                      child: IntrinsicHeight(
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                bottom: 1,
                                                                right: 78,
                                                              ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Mission Road, Jaro, Iloilo City",
                                                                style: TextStyle(
                                                                  color: Color(
                                                                    0xFF2C3439,
                                                                  ),
                                                                  fontSize: 8,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 24,
                                            height: 24,
                                            child: Image.network(
                                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/wtchnnzo_expires_30_days.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  IntrinsicWidth(
                                    child: IntrinsicHeight(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          bottom: 12,
                                          left: 12,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            IntrinsicWidth(
                                              child: IntrinsicHeight(
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                    bottom: 8,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      IntrinsicWidth(
                                                        child: IntrinsicHeight(
                                                          child: Container(
                                                            margin:
                                                                const EdgeInsets.only(
                                                                  right: 12,
                                                                ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  margin:
                                                                      const EdgeInsets.only(
                                                                        right:
                                                                            4,
                                                                      ),
                                                                  width: 12,
                                                                  height: 12,
                                                                  child: Image.network(
                                                                    "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/881itj3q_expires_30_days.png",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "2.4 kms",
                                                                  style: TextStyle(
                                                                    color: Color(
                                                                      0xFF2C3439,
                                                                    ),
                                                                    fontSize: 8,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      IntrinsicWidth(
                                                        child: IntrinsicHeight(
                                                          child: Container(
                                                            margin:
                                                                const EdgeInsets.only(
                                                                  right: 12,
                                                                ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  margin:
                                                                      const EdgeInsets.only(
                                                                        right:
                                                                            4,
                                                                      ),
                                                                  width: 12,
                                                                  height: 12,
                                                                  child: Image.network(
                                                                    "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/fjum0i1v_expires_30_days.png",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "10-15 minutes",
                                                                  style: TextStyle(
                                                                    color: Color(
                                                                      0xFF2C3439,
                                                                    ),
                                                                    fontSize: 8,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          print('Pressed');
                                                        },
                                                        child: IntrinsicWidth(
                                                          child: IntrinsicHeight(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          24,
                                                                        ),
                                                                    color: Color(
                                                                      0x1AFFC735,
                                                                    ),
                                                                  ),
                                                              padding:
                                                                  const EdgeInsets.all(
                                                                    4,
                                                                  ),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    margin:
                                                                        const EdgeInsets.only(
                                                                          right:
                                                                              4,
                                                                        ),
                                                                    width: 8,
                                                                    height: 8,
                                                                    child: Image.network(
                                                                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/mi2y5gdy_expires_30_days.png",
                                                                      fit: BoxFit
                                                                          .fill,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Limited Beds Available",
                                                                    style: TextStyle(
                                                                      color: Color(
                                                                        0xFFA1414A,
                                                                      ),
                                                                      fontSize:
                                                                          8,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            IntrinsicWidth(
                                              child: IntrinsicHeight(
                                                child: Row(
                                                  children: [
                                                    IntrinsicWidth(
                                                      child: IntrinsicHeight(
                                                        child: Container(
                                                          margin:
                                                              const EdgeInsets.only(
                                                                right: 12,
                                                              ),
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                margin:
                                                                    const EdgeInsets.only(
                                                                      right: 4,
                                                                    ),
                                                                width: 12,
                                                                height: 12,
                                                                child: Image.network(
                                                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/9hdzfo1j_expires_30_days.png",
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                              Text(
                                                                "24/7 Emergency Services",
                                                                style: TextStyle(
                                                                  color: Color(
                                                                    0xFF2C3439,
                                                                  ),
                                                                  fontSize: 8,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    IntrinsicWidth(
                                                      child: IntrinsicHeight(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              margin:
                                                                  const EdgeInsets.only(
                                                                    right: 4,
                                                                  ),
                                                              width: 12,
                                                              height: 12,
                                                              child: Image.network(
                                                                "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/hquohvaz_expires_30_days.png",
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                            Text(
                                                              "8:00 AM - 5:00 PM Clinic Hours",
                                                              style: TextStyle(
                                                                color: Color(
                                                                  0xFF2C3439,
                                                                ),
                                                                fontSize: 8,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  IntrinsicHeight(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 12),
                                      width: double.infinity,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                print('Pressed');
                                              },
                                              child: IntrinsicHeight(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Color(0xFFA1414A),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          40,
                                                        ),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        vertical: 12,
                                                      ),
                                                  margin: const EdgeInsets.only(
                                                    right: 12,
                                                  ),
                                                  width: double.infinity,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                        ),
                                                        margin:
                                                            const EdgeInsets.only(
                                                              right: 8,
                                                            ),
                                                        width: 16,
                                                        height: 16,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                          child: Image.network(
                                                            "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/n8f2m5uz_expires_30_days.png",
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "Book an appointment",
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFFA1414A,
                                                          ),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                print('Pressed');
                                              },
                                              child: IntrinsicHeight(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          40,
                                                        ),
                                                    color: Color(0xFFA1414A),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        vertical: 12,
                                                      ),
                                                  width: double.infinity,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                        ),
                                                        margin:
                                                            const EdgeInsets.only(
                                                              right: 8,
                                                            ),
                                                        width: 16,
                                                        height: 16,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                          child: Image.network(
                                                            "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/q8cvk3p2_expires_30_days.png",
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "Call 320-0315",
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFFFFFFE3,
                                                          ),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
