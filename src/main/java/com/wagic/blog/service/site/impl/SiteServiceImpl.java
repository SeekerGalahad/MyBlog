
package com.wagic.blog.service.site.impl;

import com.github.pagehelper.PageHelper;
import com.wagic.blog.dao.CommentDao;
import com.wagic.blog.dao.ContentDao;
import com.wagic.blog.dao.MetaDao;
import com.wagic.blog.dto.StatisticsDto;
import com.wagic.blog.dto.cond.CommentCond;
import com.wagic.blog.dto.cond.ContentCond;
import com.wagic.blog.model.CommentDomain;
import com.wagic.blog.model.ContentDomain;
import com.wagic.blog.service.site.SiteService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SiteServiceImpl implements SiteService {

    private static final Logger LOGGER = LoggerFactory.getLogger(SiteServiceImpl.class);

    @Autowired
    private CommentDao commentDao;

    @Autowired
    private ContentDao contentDao;

    @Autowired
    private MetaDao metaDao;


    @Override
    public List<CommentDomain> getComments(int limit) {
        LOGGER.debug("Enter recentComments method: limit={}", limit);
        if (limit < 0 || limit > 10) {
            limit = 10;
        }
        PageHelper.startPage(1, limit);
        List<CommentDomain> rs = commentDao.getCommentsByCond(new CommentCond());
        LOGGER.debug("Exit recentComments method");
        return rs;
    }

    @Override
    public List<ContentDomain> getNewArticles(int limit) {
        LOGGER.debug("Enter recentArticles method:limit={}", limit);
        if (limit < 0 || limit > 10) {
            limit = 10;
        }
        PageHelper.startPage(1, limit);
        List<ContentDomain> rs = contentDao.getArticleByCond(new ContentCond());
        LOGGER.debug("Exit recentArticles method");
        return rs;
    }

    @Override
    public StatisticsDto getStatistics() {
        LOGGER.debug("Enter recentStatistics method");

        // 文章总数
        Long articles = contentDao.getArticleCount();

        // 评论总数
        Long comments = commentDao.getCommentCount();

        StatisticsDto rs = new StatisticsDto();
        rs.setArticles(articles);
        rs.setComments(comments);
        LOGGER.debug("Exit recentStatistics method");
        return rs;
    }
}
