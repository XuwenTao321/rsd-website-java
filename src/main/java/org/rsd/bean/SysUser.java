package org.rsd.bean;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class SysUser {
    private Integer id;

    private String loginName;

    private String password;

    private String realName;

    private String headPicPath;

    private Integer roleId;

    private String roleName;

    private String sex;

    private String tel;

    private Date createTime;
}
