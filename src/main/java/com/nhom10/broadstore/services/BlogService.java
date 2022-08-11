package com.nhom10.broadstore.services;

import com.nhom10.broadstore.beans.Blog;
import com.nhom10.broadstore.dao.BlogDAO;
import com.nhom10.broadstore.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class BlogService {

    private static BlogService instance = null;

    public BlogService() {
    }

    public static BlogService getInstance() {
        if (instance == null)
            instance = new BlogService();

        return instance;
    }

    Jdbi connect = JDBIConnector.get();
    public List<Blog> getLast() {
        return connect.withExtension(BlogDAO.class, handle -> handle.getLast());
    }

    public List<Blog> getAllBlog() {
        return connect.withExtension(BlogDAO.class, handle -> handle.list());
    }

    public void delete(String id) {
        connect.useExtension(BlogDAO.class, handle -> handle.deleteById(id));
    }

    public int insert(Blog blog) {
        return connect.withExtension(BlogDAO.class, handle -> handle.insert(blog));
    }

    public int update(Blog blog) {
        return connect.withExtension(BlogDAO.class, handle -> handle.update(blog));
    }

    public Blog findById(String id) {
        return connect.withExtension(BlogDAO.class, handle -> handle.findById(id));
    }

    public int updateImage(String blogId,String image){
        return connect.withExtension(BlogDAO.class, handle -> handle.updateImage(blogId,image));
    }
}
