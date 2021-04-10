import 'package:flutter/material.dart';
import 'package:vocabulary_learning_app/Screens/Shared/footer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _isHovering = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          color: Theme.of(context).bottomAppBarColor.withOpacity(0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.028, vertical: 20),
            child: Row(
              children: [
                Text(' VOCABLEARN',
                  style: TextStyle(
                    color: Colors.white.withOpacity(1),
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            _isHovering[0] = value;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Course',
                              style: TextStyle(
                                color: _isHovering[0]
                                    ? Colors.yellow.withOpacity(1)
                                    : Colors.white.withOpacity(1),
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 3),
                            // For showing an underline on hover
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[0],
                              child: Container(
                                height: 3,
                                width: 60,
                                color: Colors.white.withOpacity(1),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width / 20),
                      InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            _isHovering[1] = value;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Contact Us',
                              style: TextStyle(
                                color: _isHovering[1]
                                    ? Colors.yellow.withOpacity(1)
                                    : Colors.white.withOpacity(1),
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 3),
                            // For showing an underline on hover
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[1],
                              child: Container(
                                height: 3,
                                width: 90,
                                color: Colors.white.withOpacity(1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            _isHovering[2] = value;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                color: _isHovering[2]
                                    ? Colors.yellow.withOpacity(1)
                                    : Colors.white.withOpacity(1),
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 3),
                            // For showing an underline on hover
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(
                                height: 3,
                                width: 66,
                                color: Colors.white.withOpacity(1),
                              ),
                            )
                          ],
                        ),
                      ),
                SizedBox(
                  width: screenSize.width / 30,
                ),
                InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            _isHovering[3] = value;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                color: _isHovering[3]
                                    ? Colors.yellow.withOpacity(1)
                                    : Colors.white.withOpacity(1),
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 3),
                            // For showing an underline on hover
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[3],
                              child: Container(
                                height: 3,
                                width: 50,
                                color: Colors.white.withOpacity(1),
                              ),
                            )
                          ],
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container( // image below the top bar
                  child: SizedBox(
                    height: screenSize.height,
                    width: screenSize.width,
                    child: Image.network(
                      'https://scontent.fdad3-2.fna.fbcdn.net/v/t1.15752-9/164625311_194742339084808_6236049167233792980_n.png?_nc_cat=105&ccb=1-3&_nc_sid=ae9488&_nc_ohc=nsQWjYCt9y0AX_CO-pT&_nc_ht=scontent.fdad3-2.fna&oh=ff6488725a56330bc4b9878463b166ec&oe=607ECB47',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Center(
                  heightFactor: 1,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: screenSize.height * 0.78,
                      left: screenSize.width / 5,
                      right: screenSize.width / 5,
                    ),
                    child: TextButton(
                      onPressed: (){},
                      child: Text('Get started', style: TextStyle(color: Colors.white, fontSize: 32),),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.amber)
                          )
                        )
                      ),
                    )
                  ),
                )
              ],
            ),
            Container(
              width: screenSize.width*0.85,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container( // image below the top bar
                    child: SizedBox(
                      width: screenSize.width*0.17,
                      child: Image.asset( 
                      'assets/images/home_background_piece.png',
                      fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(140, 50, 0, 50),
                        child: Text(
                        'Why learn English with VocabLearn',
                        style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ),
                      Text(
                          'VocabLearn is a English learning website with simple and friendly UI, which provides you with necessary features to start building your vocabulary with ease and fun. Check out some basic features you can try to improve your vocabulary below',
                          style: TextStyle(
                            fontSize: 18
                          ),
                          textAlign: TextAlign.left,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                        child: Row(
                        children: [
                          Icon(
                            Icons.create_new_folder,
                            color: Colors.orange[600],
                            size: 35,
                          ),
                          SizedBox(width: 20),
                          Text('Create a list of new words',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      )
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.share_outlined,
                              color: Colors.orange[600],
                              size: 35,
                            ),
                            SizedBox(width: 20),
                            Text('Share your lists with other users',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                        child: Row(
                        children: [
                          Icon(
                            Icons.public,
                            color: Colors.orange[600],
                            size: 35,
                          ),
                          SizedBox(width: 20),
                          Text('Browse public word lists',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      )
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                        child: Row(
                        children: [
                          Icon(
                            Icons.games_outlined,
                            color: Colors.orange[600],
                            size: 35,
                          ),
                          SizedBox(width: 20),
                          Text('Play game to remember new words',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      )
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Home footer
            Footer(),
          ],
        )
      ),
    );
  }
}
