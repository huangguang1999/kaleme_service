# Kaleme Service

基于 Hertz 框架开发的图片识别服务，可以识别图片中的食物并分析其能量组成。

## 功能特点

- 基于 OpenAI 的图片识别能力
- 支持食物能量分析
- RESTful API 接口
- 高性能的 Hertz 框架支持

## 环境要求

- Go 1.24.2 或更高版本
- thriftgo 0.4.1
- Hertz 框架

## 快速开始

### 安装

```bash
# 克隆项目
git clone [项目地址]
cd kaleme_service

# 安装依赖
go mod tidy
```

### 本地运行

```bash
# 编译项目
sh build.sh

# 运行服务
./kaleme -address localhost:8888
```

### 服务器部署

```bash
# 编译项目
sh build.sh

# 后台运行服务
nohup ./kaleme -address [服务器IP]:8888 > kaleme.log 2>&1 &
```

## API 文档

### 图片识别接口

**请求**

```
POST /ai/info
Content-Type: application/json

{
    "image_url": "图片URL地址"
}
```

**响应**

```json
{
  "resp_body": "识别结果和能量分析"
}
```

## 项目结构

```
.
├── biz/            # 业务逻辑
│   ├── handler/    # 请求处理器
│   ├── model/      # 数据模型
│   └── router/     # 路由配置
├── thrift/         # Thrift IDL 文件
└── script/         # 脚本文件
```

## 许可证

MIT License
