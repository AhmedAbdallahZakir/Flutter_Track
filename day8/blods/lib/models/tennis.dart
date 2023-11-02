import 'post_model.dart';

class Tennis extends Post {
  Post surfingPost = Post(
    postTitle: '',
    postSubtitle: '',
    postDate: '',
    postImage: '',
  );
  Tennis({required this.surfingPost})
      : super(
          postTitle: surfingPost.postTitle,
          postSubtitle: surfingPost.postSubtitle,
          postDate: surfingPost.postDate,
          postImage: surfingPost.postImage,
        );
}
