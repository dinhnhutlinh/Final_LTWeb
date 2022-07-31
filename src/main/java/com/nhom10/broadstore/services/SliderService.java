package com.nhom10.broadstore.services;

import com.nhom10.broadstore.beans.Slider;
import com.nhom10.broadstore.dao.SliderDAO;
import com.nhom10.broadstore.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class SliderService{
    Jdbi connect = JDBIConnector.get();

    public List<Slider> getAllSlider() {
        return connect.withExtension(SliderDAO.class, handle -> handle.list());
    }

    public void delete(String id) {
        connect.useExtension(SliderDAO.class, handle -> handle.deleteById(id));
    }

    public int insert(Slider slider) {
        return connect.withExtension(SliderDAO.class, handle -> handle.insert(slider));
    }

    public int update(Slider slider) {
        return connect.withExtension(SliderDAO.class, handle -> handle.update(slider));
    }

    public Slider findById(String id) {
        return connect.withExtension(SliderDAO.class, handle -> handle.findById(id));
    }

    public int updateImage(String sliderId,String image){
        return connect.withExtension(SliderDAO.class, handle -> handle.updateImage(sliderId,image));
    }
}
