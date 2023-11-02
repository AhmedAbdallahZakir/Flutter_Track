import 'post_model.dart';

class Surfing extends Post {
  Post surfingPost = Post(
    postTitle: '',
    postSubtitle: '',
    postDate: '',
    postImage: '',
  );
  Surfing({required this.surfingPost})
      : super(
          postTitle: surfingPost.postTitle,
          postSubtitle: surfingPost.postSubtitle,
          postDate: surfingPost.postDate,
          postImage: surfingPost.postImage,
        );
}
