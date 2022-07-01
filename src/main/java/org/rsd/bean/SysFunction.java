package org.rsd.bean;

import lombok.Data;

import java.util.List;

@Data
public class SysFunction {
    private Integer id;

    private String name;

    private Integer parentId;

    private String url;

    private List<SysFunction> childList;

}
