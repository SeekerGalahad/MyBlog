
package com.wagic.blog.dto;

import com.wagic.blog.model.MetaDomain;
import lombok.Data;

/**
 * 标签、分类列表
 */
@Data
public class MetaDto extends MetaDomain {

    private int count;
}
