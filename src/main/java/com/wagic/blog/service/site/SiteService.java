
package com.wagic.blog.service.site;

import com.wagic.blog.dto.StatisticsDto;
import com.wagic.blog.model.CommentDomain;
import com.wagic.blog.model.ContentDomain;

import java.util.List;

/**
 * 网站相关Service接口
 */
public interface SiteService {

    /**
     * 获取评论列表
     *
     * @param limit
     * @return
     */
    List<CommentDomain> getComments(int limit);

    /**
     * 获取文章列表
     *
     * @param limit
     * @return
     */
    List<ContentDomain> getNewArticles(int limit);

    /**
     * 获取后台统计数
     *
     * @return
     */
    StatisticsDto getStatistics();
}
