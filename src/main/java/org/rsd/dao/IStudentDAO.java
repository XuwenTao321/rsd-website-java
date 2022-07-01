package org.rsd.dao;

import org.rsd.bean.Student;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface IStudentDAO {

    List<Student> queryList();

    Student getById(Integer id);

    void insert(Student student);


}
