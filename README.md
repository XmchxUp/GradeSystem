# 毕设评分管理系统
> 毕设评分管理系统，项目如名称，核心功能为评分。设计有点臃肿，许多批量功能暂未实现，但不妨是一个“可以使用的”评分模块。
>

## 技术栈
> 使用Lin CMS 快速开发

### 后台

- Spring Boot
- Mybatis Plus
- Spring Security
- Thymeleaf

### 前端

- Vue
- Element

## 效果演示


## 本地运行
- 创建数据库，导入数据(res/data.sql)，修改application-dev文件配置
- 前端 npm install、npm run serve

## Jar包部署服务器

1. 初始化数据库，导入初始化数据
2. 前端需要配置服务器后台接口地址![image-20210511154719213](.\images\image-20210511154719213.png)
3. npm  run build  生成dist目录，把dist目录内容copy到Tomcat webapps/ROOT目录下，前端即可访问。![image-20210511154827459](.\images\image-20210511154827459.png)![image-20210511154546079](.\images\image-20210511154546079.png)
4. 后台打包前需要配置信息 指导使用生产项目配置信息，配置生产项目配置信息里的数据库相关内容（表，账号）![image-20210511155544098](.\images\image-20210511155544098.png)![image-20210511155605070](.\images\image-20210511155605070.png)
5. 到后台项目目录下打成jar包(mvn clean package -Dmaven.test.skip=true)  然后复制target下的jar包到任意地方 运行 java -Dfile.encoding=UTF-8 -jar jar包名称.jar  (可能是UTF8)![image-20210511155502673](.\images\image-20210511155502673.png)

