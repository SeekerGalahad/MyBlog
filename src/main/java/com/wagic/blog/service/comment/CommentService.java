
package com.wagic.blog.service.comment;

import com.github.pagehelper.PageInfo;
import com.wagic.blog.dto.cond.CommentCond;
import com.wagic.blog.model.CommentDomain;

import java.util.List;

/**
 * 评论相关Service接口
 */
public interface CommentService {

    /**
     * 添加评论
     *
     * @param comments
     */
    void addComment(CommentDomain comments);

    /**
     * 通过文章ID获取评论
     *
     * @param cid
     * @return
     */
    List<CommentDomain> getCommentsByCId(Integer cid);

    /**
     * 根据条件获取评论列表
     *
     * @param commentCond 查询条件
     * @param pageNum     分页参数 第几页
     * @param pageSize    分页参数 每页条数
     * @return
     */
    PageInfo<CommentDomain> getCommentsByCond(CommentCond commentCond, int pageNum, int pageSize);

    /**
     * 通过ID获取评论
     *
     * @param coid
     * @return
     */
    CommentDomain getCommentById(Integer coid);

    /**
     * 更新评论状态
     *
     * @param coid
     * @param status
     */
    void updateCommentStatus(Integer coid, String status);
}
