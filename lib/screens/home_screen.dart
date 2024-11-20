import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:self_care/utils/constants.dart';
import 'package:badges/badges.dart' as badges;
import 'package:self_care/widgets/feeling_widget.dart';
import 'package:self_care/widgets/pracice_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    List<String> selfCareItems = ['Luyện tập', 'Xem phim', 'Sách', 'Kiểm tra'];
    List<String> practices = [
      'Thiền',
      'Thức dậy',
      'Tập trung sâu',
      'Thở sâu',
      'Quan tâm',
      'Sáng tạo',
    ];

    List<String> practiceEmoji = ['🧘‍♂️', '🛏️', '🙏', '😤', '👁️', '🎨'];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.person,
                                ),
                                decoration: ShapeDecoration(
                                    shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    color: Constants.grey),
                                padding: EdgeInsets.all(10),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Huu Nhien',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Trai đẹp',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                              Spacer(),
                              Container(
                                child: badges.Badge(
                                  position: badges.BadgePosition.topEnd(
                                      top: 0, end: 2),
                                  badgeStyle: badges.BadgeStyle(
                                    badgeColor: Constants.green,
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Icon(
                                    Iconsax.notification5,
                                    color: Colors.grey,
                                  ),
                                ),
                                decoration: ShapeDecoration(
                                  shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  color: Constants.grey,
                                ),
                                padding: EdgeInsets.all(10),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                'Bạn cảm thấy hôm nay thế nào?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              FeelingWidget(emoji: '🤬', title: 'Tức giận'),
                              FeelingWidget(emoji: '😔', title: 'Bùn'),
                              FeelingWidget(emoji: '😶', title: 'Trung lập'),
                              FeelingWidget(emoji: '🥳', title: 'Vui vẻ'),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Constants.blackGreen,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                'Cuộc hẹn tiếp theo',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      '28',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'apr',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.shade600.withOpacity(0.4),
                                ),
                                padding: EdgeInsets.all(15),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            '14:30',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Giờ đi làm',
                                            style: TextStyle(
                                                color: Colors.grey.shade400,
                                                fontSize: 13),
                                          ),
                                        ],
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                      ),
                                      Icon(
                                        Icons.more_horiz_outlined,
                                        color: Colors.white,
                                      ),
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        Colors.grey.shade600.withOpacity(0.4),
                                  ),
                                  padding: EdgeInsets.all(15),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            DraggableScrollableSheet(
              builder: (context, scrollController) => Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomScrollView(
                    controller: scrollController,
                    slivers: [
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 15,
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: 150),
                        sliver: SliverToBoxAdapter(
                          child: Container(
                            height: 4,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 30,
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Text(
                          'Sức khỏe bản thân',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 25,
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Container(
                          child: Row(
                            children:
          
                                List.generate(selfCareItems.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: Container(
                                  child: Text(
                                    selfCareItems[index],
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: selectedIndex == index
                                          ? Colors.black
                                          : Colors.grey,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: selectedIndex == index
                                        ? Colors.grey.shade300
                                        : Colors.transparent,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                ),
                              );
                            }),
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 25,
                        ),
                      ),
                      SliverGrid.builder(
                        itemCount: 5,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              color: Colors.red,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              initialChildSize: 0.4,
              minChildSize: 0.4,
              maxChildSize: 0.9,
            ),
          ],
        ),
      ),
    );
  }
}
