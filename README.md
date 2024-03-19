# npm发包脚本切换教程
| cnr.sh change npm registry

1. 使用bush窗口打开项目所在位置
2. 开启使用权限 `chmod +x cnr.sh`
3. 执行脚本 cnr.sh  `./cnr.sh`

# npm发包流程

1. 先切换至npm官方镜像源
2. 登录npm账号 `npm login` 密码输入无显示
3. .查看登录状态 `npm whoami`
4. 发布 `npm publish` ˈpʌblɪʃ'
5. 根据需求切换回淘宝镜像源
6. 登录npmjs官网查看包