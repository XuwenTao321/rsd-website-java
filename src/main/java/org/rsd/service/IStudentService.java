package org.rsd.service;


import org.rsd.bean.Student;

import java.util.List;

public interface IStudentService {

    List<Student> queryList();

    void insert(Student student);

    Student getById(Integer id);

    void update(Student student);

    void delete(Integer id);
}
