import 'package:flutter/material.dart';
import 'package:news_app_project/models/ArticleModel.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key , required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchUrl ,

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child:Image.network(articleModel.image??
                'https://as2.ftcdn.net/v2/jpg/00/98/14/23/1000_F_98142334_bAbFQ7FxhFJjSQU8U64BOEa7SvS4l8nC.jpg'

            ),

          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text( articleModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(articleModel.subTitle??' ',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl() async
  {
    final Uri _url = Uri.parse(articleModel.url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
