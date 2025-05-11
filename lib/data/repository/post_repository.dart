import '../api/api_manager.dart';
import '../models/post.dart';

class PostRepository {
  Future<List<Post>> fetchPosts() async {
    final response = await ApiManager.get('/posts');
    final List<dynamic> data = response.data;
    return data.map((json) => Post.fromJson(json)).toList();
  }
}
