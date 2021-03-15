#!/bin/bash

### Docker & Nvidia-Docker インストール(Ubuntu16.06)
### 参考 : http://blog.amedama.jp/entry/2017/04/03/235901
### Yousuke 2017/4/7

## Docker
# 依存パッケージインストール
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
# APT の認証鍵をインストール
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# 公式リポジトリを登録
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# リポジトリ更新
sudo apt-get update
# Docker Engine (Community Edition) インストール
sudo apt-get -y install docker-ce
# Docker Service 起動(systemctlがない場合, Ubuntu14.04)
# sudo service docker start

## Nvidia-Docker
# Nvidia-Docker Engine インストール
sudo dpkg -i nvidia-docker_1.0.1-1_amd64.deb
# Nvidia-Docker Service 起動(Ubuntu16.06)
systemctl list-units --type=service | grep -i nvidia-docker
# Nvidia-Docker Service 起動(systemctlがない場合, Ubuntu14.04)
# sudo service nvidia-docker start
