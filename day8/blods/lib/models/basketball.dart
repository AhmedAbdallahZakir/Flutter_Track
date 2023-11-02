import 'post_model.dart';

class Basketball extends Post {
  Post surfingPost = Post(
    postTitle: '',
    postSubtitle: '',
    postDate: '',
    postImage: '',
  );
  Basketball({required this.surfingPost})
      : super(
          postTitle: surfingPost.postTitle,
          postSubtitle: surfingPost.postSubtitle,
          postDate: surfingPost.postDate,
          postImage: surfingPost.postImage,
        );
}
