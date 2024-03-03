import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var insta =['Your Story','Kabir','Virat','Sabir','Shubham','id-6','id-7','id-8','id-9','id-10'];
class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        title: Container(
          height:300,
            width: 120,
            child: Image.asset('assets/im age/logo.png')),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border_outlined),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
      body: Container(
        color: Colors.black87,
        child: SingleChildScrollView(
          child: Column(
            children:
            [
              SizedBox(
                  height: 100,
                  child:ListView.builder(
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.pink,
                                    width: 2,
                                  )
                              ) ,
                              child: CircleAvatar(
                                backgroundColor: Colors.black12,
                                radius:25,
                                child: Icon(
                                  Icons.account_circle,
                                  size: 50,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              insta[index],
                              style: TextStyle(
                                color: Colors.white,
                                  fontSize: 12
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: insta.length,
                    scrollDirection: Axis.horizontal,
                  )
              ),
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 70,
                  color: Colors.grey,),
                title: Text('Sabir Naman',style: TextStyle(
                  color: Colors.white
                ),),
                subtitle: Text('Switzerland',style: TextStyle(
                  color: Colors.grey,
                ),),
                trailing: Icon(
                  Icons.toc_outlined,
                  size: 70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Container(
                  child: Image.asset('assets/image/post1.png'),
                  height: 430,
                  width: 400,
                  color: Colors.black12,
                ),
              ),
              SizedBox(
                child:ButtonBar(
                  children: [
                    IconButton(
                      icon: Icon(
                          Icons.favorite_border_outlined),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                    IconButton(
                        icon: Icon(Icons.chat_bubble_outline_outlined),
                        onPressed: (){},
                      color: Colors.white,
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.send_outlined),
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 175),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.save),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 70,
                  color: Colors.grey,),
                title: Text('Sabir Naman',style: TextStyle(
                    color: Colors.white
                ),),
                subtitle: Text('Switzerland',style: TextStyle(
                  color: Colors.grey,
                ),),
                trailing: Icon(
                  Icons.toc_outlined,
                  size: 70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Container(
                  child: Image.asset('assets/image/post2.jpg'),
                  height: 600,
                  width: 400,
                  color: Colors.white,
                ),
              ),
                  ButtonBar(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border_outlined),
                        onPressed: () {},
                        color: Colors.white,
                      ),
                      IconButton(
                          icon: Icon(Icons.chat_bubble_outline_outlined),
                          onPressed: (){},
                        color: Colors.white,
                      ),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.send_outlined),
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 175),
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.save),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
            ],
          ),
        ),
      )
    );
  }
}