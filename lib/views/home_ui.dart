// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    _tabController =
        TabController(length: 7, vsync: this, initialIndex: _currentTabIndex);
    super.initState();
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.pink,
            title: Text(
              'DTI Cake Shop',
              style: GoogleFonts.kanit(
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  exit(0);
                },
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.grey,
                ),
              ),
            ],
            bottom: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.grey[400],
              indicatorColor: Colors.yellow,
              indicatorWeight: 5.0,
              tabAlignment: TabAlignment.start,
              tabs: [
                Tab(
                  icon: Icon(Icons.abc),
                  text: 'The.earlybake',
                ),
                Tab(
                  icon: Icon(Icons.zoom_out_map_outlined),
                  text: 'Feelin.doughgood',
                ),
                Tab(
                  icon: Icon(Icons.dangerous),
                  text: 'C Belly',
                ),
                Tab(
                  icon: Icon(Icons.radar_rounded),
                  text: 'The Story Caker',
                ),
                Tab(
                  icon: Icon(Icons.h_mobiledata_rounded),
                  text: 'Aob Auan',
                ),
                Tab(
                  icon: Icon(Icons.baby_changing_station_sharp),
                  text: 'SamSuan',
                ),
                Tab(
                  icon: Icon(Icons.one_x_mobiledata_rounded),
                  text: 'Cafe De Tu',
                ),
              ],
            )),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'SAU Cake Shop',
                  style: GoogleFonts.kanit(),
                ),
                accountEmail: Text(
                  'แอบสำหรับคนชอบกินเค้ก',
                  style: GoogleFonts.kanit(),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bg_welcome.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/1854652/pexels-photo-1854652.jpeg?auto=compress&cs=tinysrgb&w=600'),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1854652/pexels-photo-1854652.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1854652/pexels-photo-1854652.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                ],
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 0;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck01.png'),
                ),
                title: Text('The.earlybake'),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 1;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck02.png'),
                ),
                title: Text('Feelin.doughgood'),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 2;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck03.png'),
                ),
                title: Text('C Belly'),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 3;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck04.png'),
                ),
                title: Text('The Story Caker'),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 4;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck05.png'),
                ),
                title: Text('Aob Auan'),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 5;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck06.png'),
                ),
                title: Text('SamSuan'),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 6;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck07.png'),
                ),
                title: Text('Cafe De Tu'),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  exit(0);
                },
                leading: Icon(
                  Icons.exit_to_app,
                ),
                title: Text(
                  'ปิดการใช้งาน',
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            showShopWidget(
                'The.earlybake',
                'assets/images/ck01.png',
                '0928637993',
                'http://www.sau.ac.th',
                'https://www.google.co.th/maps/place/The.earlybake(ไดฟูกุสตอเบอรี่)/@13.9478299,100.5464105,17z/data=!4m16!1m9!3m8!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!2zVGhlLmVhcmx5YmFrZSjguYTguJTguJ_guLnguIHguLjguKrguJXguK3guYDguJrguK3guKPguLXguYgp!8m2!3d13.9478299!4d100.5489854!9m1!1b1!16s%2Fg%2F11lrymcytz!3m5!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!8m2!3d13.9478299!4d100.5489854!16s%2Fg%2F11lrymcytz?entry=ttu'),
            showShopWidget(
                'C Belly',
                'assets/images/ck02.png',
                '0845569285',
                'http://www.google.com',
                'https://www.google.co.th/maps/place/The.earlybake(ไดฟูกุสตอเบอรี่)/@13.9478299,100.5464105,17z/data=!4m16!1m9!3m8!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!2zVGhlLmVhcmx5YmFrZSjguYTguJTguJ_guLnguIHguLjguKrguJXguK3guYDguJrguK3guKPguLXguYgp!8m2!3d13.9478299!4d100.5489854!9m1!1b1!16s%2Fg%2F11lrymcytz!3m5!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!8m2!3d13.9478299!4d100.5489854!16s%2Fg%2F11lrymcytz?entry=ttu'),
            showShopWidget(
                'Feelin.doughgood',
                'assets/images/ck03.png',
                '0961124568',
                'http://www.facebook.com',
                'https://www.google.co.th/maps/place/The.earlybake(ไดฟูกุสตอเบอรี่)/@13.9478299,100.5464105,17z/data=!4m16!1m9!3m8!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!2zVGhlLmVhcmx5YmFrZSjguYTguJTguJ_guLnguIHguLjguKrguJXguK3guYDguJrguK3guKPguLXguYgp!8m2!3d13.9478299!4d100.5489854!9m1!1b1!16s%2Fg%2F11lrymcytz!3m5!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!8m2!3d13.9478299!4d100.5489854!16s%2Fg%2F11lrymcytz?entry=ttu'),
            showShopWidget(
                'The Story Caker',
                'assets/images/ck04.png',
                '0819856649',
                'http://www.youtube.com',
                'https://www.google.co.th/maps/place/The.earlybake(ไดฟูกุสตอเบอรี่)/@13.9478299,100.5464105,17z/data=!4m16!1m9!3m8!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!2zVGhlLmVhcmx5YmFrZSjguYTguJTguJ_guLnguIHguLjguKrguJXguK3guYDguJrguK3guKPguLXguYgp!8m2!3d13.9478299!4d100.5489854!9m1!1b1!16s%2Fg%2F11lrymcytz!3m5!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!8m2!3d13.9478299!4d100.5489854!16s%2Fg%2F11lrymcytz?entry=ttu'),
            showShopWidget(
                'Aob Auan',
                'assets/images/ck05.png',
                '0956691169',
                'http://www.steam.com',
                'https://www.google.co.th/maps/place/The.earlybake(ไดฟูกุสตอเบอรี่)/@13.9478299,100.5464105,17z/data=!4m16!1m9!3m8!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!2zVGhlLmVhcmx5YmFrZSjguYTguJTguJ_guLnguIHguLjguKrguJXguK3guYDguJrguK3guKPguLXguYgp!8m2!3d13.9478299!4d100.5489854!9m1!1b1!16s%2Fg%2F11lrymcytz!3m5!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!8m2!3d13.9478299!4d100.5489854!16s%2Fg%2F11lrymcytz?entry=ttu'),
            showShopWidget(
                'SamSuan',
                'assets/images/ck06.png',
                '0825569482',
                'http://www.tiktok.com',
                'https://www.google.co.th/maps/place/The.earlybake(ไดฟูกุสตอเบอรี่)/@13.9478299,100.5464105,17z/data=!4m16!1m9!3m8!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!2zVGhlLmVhcmx5YmFrZSjguYTguJTguJ_guLnguIHguLjguKrguJXguK3guYDguJrguK3guKPguLXguYgp!8m2!3d13.9478299!4d100.5489854!9m1!1b1!16s%2Fg%2F11lrymcytz!3m5!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!8m2!3d13.9478299!4d100.5489854!16s%2Fg%2F11lrymcytz?entry=ttu'),
            showShopWidget(
                'Cafe De Tu',
                'assets/images/ck07.png',
                '0825569482',
                'http://www.twich.tv',
                'https://www.google.co.th/maps/place/The.earlybake(ไดฟูกุสตอเบอรี่)/@13.9478299,100.5464105,17z/data=!4m16!1m9!3m8!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!2zVGhlLmVhcmx5YmFrZSjguYTguJTguJ_guLnguIHguLjguKrguJXguK3guYDguJrguK3guKPguLXguYgp!8m2!3d13.9478299!4d100.5489854!9m1!1b1!16s%2Fg%2F11lrymcytz!3m5!1s0x30e28350e08b53a5:0x2353aad7e0e015f4!8m2!3d13.9478299!4d100.5489854!16s%2Fg%2F11lrymcytz?entry=ttu'),
          ],
        ),
      ),
    );
  }

  Widget showShopWidget(String shopName, String shopImg, String shopPhone,
      String shopWeb, String shopGps) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Text(
            shopName,
            style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.height * 0.035),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Image.asset(
            shopImg,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50.0, right: 50.0),
            child: ListTile(
              onTap: () {
                _makePhoneCall(shopPhone);
              },
              tileColor: Colors.pink[100],
              leading: Icon(
                Icons.phone,
              ),
              title: Text(
                shopPhone,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50.0, right: 50.0),
            child: ListTile(
              onTap: () {
                _launchInBrowser(Uri.parse(shopWeb));
              },
              tileColor: Colors.pink[100],
              leading: Icon(
                Icons.web,
              ),
              title: Text(
                shopWeb,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50.0, right: 50.0),
            child: ListTile(
              onTap: () {
                _launchInBrowser(Uri.parse(shopGps));
              },
              tileColor: Colors.pink[100],
              leading: Icon(
                Icons.map,
              ),
              title: Text(
                'นำทางไปร้าน',
              ),
            ),
          )
        ],
      ),
    );
  }
}
