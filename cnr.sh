#!/bin/bash

# 切换到官方镜像
use_official_mirror() {
  npm config set registry https://registry.npmjs.org/
  echo "已切换到官方镜像"
}

# 切换到淘宝镜像
use_taobao_mirror() {
  npm config set registry registry.npmmirror.com/
  echo "已切换到淘宝镜像"
}

# 切换到cnpm镜像
use_cnpm_mirror() {
  npm config set registry registry.npmmirror.com/
  npm install -g cnpm --registry=registry.npmmirror.com
  echo "已切换到cnpm镜像"
}

# 打印当前使用的镜像
print_current_mirror() {
  current_mirror=$(npm config get registry)
  echo "当前使用的镜像为：$current_mirror"
}

# 主菜单
main_menu() {
  echo "===== NPM 镜像切换脚本 ====="
  echo "1. 切换到官方镜像"
  echo "2. 切换到淘宝镜像"
  echo "3. 切换到cnpm镜像"
  echo "4. 查看当前镜像"
  echo "0. 退出"
  echo "==========================="

  read -p "请输入选项数字： " choice

  case $choice in
    1)
      use_official_mirror
      ;;
    2)
      use_taobao_mirror
      ;;
    3)
      use_cnpm_mirror
      ;;
    4)
      print_current_mirror
      ;;
    0)
      echo "退出脚本"
      exit 0
      ;;
    *)
      echo "无效选项，请重新输入"
      ;;
  esac

  echo ""
  main_menu
}

# 启动主菜单
main_menu