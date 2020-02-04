
package com.wagic.blog.model;

import lombok.Data;

/**
 * 文章关联信息表
 */
@Data
public class RelationShipDomain {

    /**
     * 文章主键
     */
    private Integer cid;

    /**
     * 项目编号
     */
    private Integer mid;
}
