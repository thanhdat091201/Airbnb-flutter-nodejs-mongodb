import 'dart:ffi';

import 'package:airbnb/infrastructure/providers/provider_registration.dart';
import 'package:airbnb/infrastructure/response/home_card_response.dart';
import 'package:airbnb/infrastructure/utills/route_constants.dart';
import 'package:airbnb/ui/commons/text_widget/app_text.dart';
import 'package:airbnb/ui/screens/home/screens/widgets/drag_handle_bottom_sheet.dart';
import 'package:airbnb/ui/screens/home/widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeBottomSheet extends ConsumerStatefulWidget {
  final ScrollController controller;
  final PanelController panelController;

  const HomeBottomSheet({super.key, required this.controller, required this.panelController});

  @override
  ConsumerState<HomeBottomSheet> createState() => _HomeBottomSheetState();
}

class _HomeBottomSheetState extends ConsumerState<HomeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // margin: const EdgeInsets.only(bottom: 100),
          child: ListView(
            controller: widget.controller,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            children: [
              const DragHandleBottomSheet(),
              GestureDetector(
                onTap: () {
                  widget.panelController.open();
                },
                child: Container(
                    padding: const EdgeInsets.only(top: 21, bottom: 21),
                    child: const AppText(
                        title: "565 countryside homes",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        titleTextAlign: TextAlign.center)),
              ),
              for (var i = 0; i < data.length; i++)
                HomeCard(
                  displayImage: data[i]['displayImage'] ?? '',
                  cardName: data[i]['cardName'] ?? '',
                  cardDistance: data[i]['cardDistance'] ?? '',
                  cardDate: data[i]['cardDate'] ?? '',
                  cardPrice: data[i]['cardPrice'] ?? '',
                  cardrating: data[i]['cardrating'] ?? '',
                  onTap: () {
                    ref.read(homeProvider).recentData = i;
                    Navigator.pushNamed(context, RouteConstants.detailsScreen);
                  },
                ),
              const SizedBox(height: 50),
            ],
          ),
        ),
        // Align(
        //     alignment: Alignment.bottomCenter,
        //     child: AnimatedOpacity(
        //       opacity: homeProviderWatch.isMapButtonVisible ? 1.0 : 0.0,
        //       duration: const Duration(milliseconds: 500),
        //       child: Container(
        //         padding: const EdgeInsets.all(12),
        //         margin: EdgeInsets.only(bottom: 20),
        //         // height: 50,
        //         width: 74,
        //         // color: Colors.red,
        //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFF222222)),
        //         child: Row(children: [
        //           const AppText(
        //             title: "Map",
        //             fontSize: 12,
        //             fontWeight: FontWeight.w600,
        //             titleColor: Colors.white,
        //           ),
        //           const SizedBox(width: 8),
        //           SvgPicture.asset(
        //             ImageConstants.mapIcon,
        //             color: Colors.white,
        //             height: 16,
        //             width: 16,
        //           ),
        //         ]),
        //       ),
        //     ))
      ],
    );
  }
}

const data = [
  {
    "displayImage":
        "https://a0.muscache.com/im/pictures/miso/Hosting-605371928419351152/original/c8f48e8b-091d-47ea-85ac-b31bc2604bbb.jpeg?im_w=720",
    "cardName": "Pimplad Nasik, India",
    "cardDistance": "134 kilometres away",
    "cardDate": "12–19 Mar",
    "cardPrice": "₹20,697 ",
    "cardrating": "6"
  },
  {
    "displayImage": "https://a0.muscache.com/im/pictures/82e3a044-9e2a-4555-9bee-608a862b3c59.jpg?im_w=720",
    "cardName": "Baa Atoll, Maldies",
    "cardDistance": "767 kilometres away",
    "cardDate": "20–29 Mar",
    "cardPrice": "₹15,558 ",
    "cardrating": "6"
  },
  {
    "displayImage": "https://a0.muscache.com/im/pictures/3f6b83e1-694f-4fcf-a522-53746fcdf5fe.jpg?im_w=720",
    "cardName": "South Nilandhe Athol Maldives",
    "cardDistance": "990 kilometres away",
    "cardDate": "19-24 Mar",
    "cardPrice": "₹82,557 ",
    "cardrating": "6"
  },
  {
    "displayImage":
        "https://a0.muscache.com/im/pictures/miso/Hosting-636070119680439851/original/26c46614-4bea-4f2b-9e9d-e09c51b35764.jpeg?im_w=720",
    "cardName": "Olhuveli, Maldives",
    "cardDistance": "883 kilometres away",
    "cardDate": "18–23 Mar",
    "cardPrice": "₹14,139 ",
    "cardrating": "8"
  }
];
