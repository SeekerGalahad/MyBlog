
package com.wagic.blog.model;

import lombok.Data;

/**
 * 网站图片文件相关表
 */
@Data
public class AttAchDomain {

    /**
     * 主键编号
     */
    private Integer id;

    /**
     * 文件名称
     */
    private String fname;

    /**
     * 文件类型
     */
    private String ftype;

    /**
     * 文件的地址
     */
    private String fkey;

    /**
     * 上传人的ID
     */
    private Integer authorId;

    /**
     * 创建的时间戳
     */
    private Integer created;

}
