
package com.wagic.blog.model;

import lombok.Data;

/**
 * 网站配置项
 */
@Data
public class OptionsDomain {

    /**
     * 名称
     */
    private String name;
    /**
     * 内容
     */
    private String value;

    /**
     * 描述
     */
    private String description;
}
