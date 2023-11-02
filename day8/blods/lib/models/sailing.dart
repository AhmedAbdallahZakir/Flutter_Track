import 'post_model.dart';

class Sailing extends Post {
  Post surfingPost = Post(
    postTitle: '',
    postSubtitle: '',
    postDate: '',
    postImage: '',
  );
  Sailing({required this.surfingPost})
      : super(
          postTitle: surfingPost.postTitle,
          postSubtitle: surfingPost.postSubtitle,
          postDate: surfingPost.postDate,
          postImage: surfingPost.postImage,
        );
}
