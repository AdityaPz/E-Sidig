import 'package:esidig/components/AppBar.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class GerbangAND extends StatelessWidget {
  void clicked(BuildContext context, String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gerbang AND',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Rangkaian AND dinyatakan sebagai Y = A . B, dan output rangkaian Y menjadi “1” hanya ketika kedua input A dan B adalah “1”, dan Y menjadi “0” pada kondisi yang lain.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Truth Table',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(
              'https://blogmedia.testbook.com/blog/wp-content/uploads/2021/06/truth-table-and-jpg-9cde652f.jpg',
            ),
            SizedBox(height: 10.0),
            Text(
              'Symbol & Circuit',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(
                width: 500,
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHijSPS9AN4qQdqNgc1HAewzWppQrEJA8Z7Q&usqp=CAU'),
            // Text(
            //   'Ini adalah paragraf ketiga. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            //   style: TextStyle(fontSize: 16.0),
            // ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: 'cXsozQ7xZP4',
                  flags: YoutubePlayerFlags(
                    autoPlay: false,
                    mute: false,
                  ),
                ),
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
                progressColors: ProgressBarColors(
                  playedColor: Colors.blue,
                  handleColor: Colors.blueAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
