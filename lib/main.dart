import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cloned WhatsApp',
      theme: ThemeData(
        primaryColor: Colors.teal,
        accentColor: new Color(0xff075E54),

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, }) : super(key: key);

  @override
Widget build(BuildContext context){
    return DefaultTabController(
        length: 4,
        child:Scaffold(
          appBar: AppBar(
              actions: [
          InkWell(child: Icon(Icons.search), onTap: (){

        }),
    PopupMenuButton(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
    ),
    itemBuilder: (context){
    return[
    PopupMenuItem(child: Text('New Group'),),
    PopupMenuItem(child: Text('New Broadcast'),),
    PopupMenuItem(child: Text('Linked Device'),),
    PopupMenuItem(child: Text('Starred Messages'),),
    PopupMenuItem(child: Text('Settings'),),
    ];
    },
    ),
    ],
      backgroundColor: Color(0xff128C7E),
    title: Text('WhatsApp'),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  iconMargin: EdgeInsets.all(100),
                  child: Icon(
                    Icons.camera_alt_rounded,
                  ),
                ),
                Tab(
                  child: Text('CHATS',style: TextStyle(color:Colors.white),),
                ),
                Tab(
                  child: Text('STATUS',style: TextStyle(color:Colors.white),),
                ),
                Tab(
                  child: Text('CALLS',style: TextStyle(color:Colors.white),),
                ),
              ],
              labelColor: Colors.white,
            ),
    ),
    body: TabBarView(
        children: [
          Center(child: Text('Camera'),),
          ChatsTab(),
          StatusTab(),
          Center(child: Text('No calls'),),
        ],
    ),
   //body: Center(child: Text('Hello Adama')),
    ),
    );

  }
}
class ChatsTab extends StatelessWidget{
  ChatsTab({Key key, }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
body: Padding(
  padding: EdgeInsets.all(8.0),
  child: ListView(
    children: [
      SingleChatWidget(
        chatTitle: "Al-Amin",
        chatMessage: 'Hannany',
        seenStatusColor: Colors.blue,
        image: 'images/Alamin2.jpg',
      ),
      SingleChatWidget(
        chatTitle: "Saa",
        chatMessage: 'Make we buy Abaya nah',
        seenStatusColor: Colors.blue,
        image: 'images/Saa1.jpg',
      ),
      SingleChatWidget(
        chatTitle: "Abdulqadir",
        chatMessage: 'Salamun Aliakum Warahmatullah Wabarakatuh',
        seenStatusColor: Colors.grey,
        image: 'images/Alamin1.jpg',
      ),
      SingleChatWidget(
        chatTitle: "junior",
        chatMessage: 'send me card nah',
        seenStatusColor: Colors.grey,
        image: 'images/junior1.jpg',
      ),
      SingleChatWidget(
        chatTitle: "Baba",
        chatMessage: 'Ada how fa',
        seenStatusColor: Colors.blue,
        image: 'images/Baba1.jpg',
      ),
      SingleChatWidget(
        chatTitle: "Zakky",
        chatMessage: 'When should we be expecting it?',
        seenStatusColor: Colors.blue,
        image: 'images/babajunior.jpg',
      ),
      SingleChatWidget(
        chatTitle: "Khalil",
        chatMessage: 'Do you like it?',
        seenStatusColor: Colors.blue,
        image: 'images/IMG1.jpg',
      ),
      SingleChatWidget(
        chatTitle: "Adama",
        chatMessage: 'please check your email',
        seenStatusColor: Colors.blue,
        image: 'images/Ada4.jpg',
      ),
      SingleChatWidget(
        chatTitle: "Ada",
        chatMessage: 'howfa',
        seenStatusColor: Colors.grey,
        image: 'images/Ada3.jpg',
      ),
    ],
  ),
),
    );
  }
}
class SingleChatWidget extends StatelessWidget{
  final String chatMessage;
  final String chatTitle;
  final Color seenStatusColor;
  final String image;


  SingleChatWidget({
    Key key,
    this.chatMessage,
    this.chatTitle,
    this.seenStatusColor,
    this.image,
}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(image),
        ),
        Expanded(
            child: ListTile(
              title: Text('$chatTitle',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Row(children: [
                Icon(
                  seenStatusColor == Colors.blue ? Icons.done_all: Icons.done,
                  size: 15,
                  color: seenStatusColor,
                ),
                Expanded(
                  child:Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text(
                      '$chatMessage',
                      style:  TextStyle()
                    ),
                  ),
                ),
              ],),
              trailing: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text('just now',),
                  ),
                ],
              ),
            ),
        ),
      ],
    );
  }
}

class StatusTab extends StatelessWidget{
   StatusTab ({Key key}) : super (key: key);
  @override
  Widget build (BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/IMG1.jpg'),
                      //foregroundColor: Color(0xff128C7E),/
                      radius: 30,
                    ),
                    Positioned(
                      top: 40,
                      left: 40,
                      child: CircleAvatar(
                        radius: 10,
                        child: Icon(Icons.add, size: 20),
                      ),
                    ),
              ],
            ),
                Expanded(
                  child: ListTile(
                    title: Text('My Status'),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 2.0),
                      child: Text('Tap to add status update'),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: 8.0,bottom: 8.0),
              child: Text('Viewed updates',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage:
                        AssetImage('images/Ada4.jpg'),
                      ),
                    ),
                  ],
                ),
                Expanded(
                    child: ListTile(
                      title: Text('Al-Amin'),
                      subtitle: Padding(padding: EdgeInsets.only(top: 2.0),
                      child: Text('10 minutes ago'),
                    ),
                ),
                )
              ],
            ),
            Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                    tilePadding: EdgeInsets.all(0.0),
                    title: Text('Muted updates',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  children: [
                    SingleStatusItem(
                      statusTitle:'Abdulqadir',
                      statusTime:'30 minutes ago',
                      statusImage:'images/Alamin1.jpg',
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
class SingleStatusItem extends StatelessWidget{
  final String statusTitle;
  final String statusTime;
  final String statusImage;
  SingleStatusItem({
    Key key,
    this.statusTitle,
    this.statusTime,
    this.statusImage,
}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
        Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 30,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('$statusImage'),
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListTile(
                  title: Text('$statusTitle'),
                  subtitle: Padding(
                      padding: EdgeInsets.only(top: 2.0),
                    child: Text("$statusTime"),
                  ),
                ),
            ),
          ],
        );
  }
}