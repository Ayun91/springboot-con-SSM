package com.aaa.entity;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 上传阿里云文件
 * 账号配置
 */

@Data
@Component
@ConfigurationProperties(prefix = "oss")
public class OssEntity {
    // Endpoint以华东1（杭州）为例，其它Region请按实际情况填写。
    String endpoint;
    // 阿里云账号AccessKey拥有所有API的访问权限，风险很高。强烈建议您创建并使用RAM用户进行API访问或日常运维，请登录RAM控制台创建RAM用户。
    String accessKeyId;
    String accessKeySecret;
    // 填写Bucket名称，例如examplebucket。
    String bucketName;
}
