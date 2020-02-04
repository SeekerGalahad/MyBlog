package com.wagic.blog.constant;

public enum Types {

    // 分类
    CATEGORY("category"),
    // 标签
    TAG("tag"),
    // 文章
    ARTICLE("post"),
    // csrf_token
    CSRF_TOKEN("csrf_token"),
    // 评论
    COMMENTS_FREQUENCY("comments:frequency"),
    // 图片
    IMAGE("image"),
    // 文件
    FILE("file");

    private String type;

    public java.lang.String getType() {
        return type;
    }

    public void setType(java.lang.String type) {
        this.type = type;
    }

    Types(java.lang.String type) {
        this.type = type;
    }
}

