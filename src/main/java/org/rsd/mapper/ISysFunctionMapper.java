package org.rsd.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.rsd.bean.SysFunction;


import java.util.List;

public interface ISysFunctionMapper {
    @Select("select * from bu_sys_function where parent_id = #{parentId}")
    List<SysFunction> getListByParentId(Integer parentId);

    @Select("select * from bu_sys_function order by id desc")
    List<SysFunction> queryList();

    @Select("select * from bu_sys_function where id=#{id}")
    SysFunction getById(Integer id);

    @Insert("insert into bu_sys_function values(null,#{name},#{url})")
    void insert(SysFunction sysFunction);

    @Delete("delete from bu_sys_function where id=#{id}")
    void doDelById(Integer id);

    @Update("update bu_sys_function set name=#{name},url=#{url} where id=#{id}")
    void update(SysFunction sysFunction);
}
