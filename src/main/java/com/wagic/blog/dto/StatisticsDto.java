
package com.wagic.blog.dto;

import lombok.Data;

/**
 * 后台统计对象
 */
@Data
public class StatisticsDto {

    /**
     * 文章数
     */
    private Long articles;

    /**
     * 评论数
     */
    private Long comments;

}
