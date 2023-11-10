# CentOS安装Vscode-yum+Vscode前端开发必安装的插件




# 在本教程中，我们将介绍如何使用 CentOS 7 机器上的官方代码存储库安装最新版本的 Visual Studio Code。

# 首先，我们需要使用以下命令导入 Microsoft GPG 密钥：
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

#创建以下 repo 文件以启用 Visual Studio Code 存储库。
sudo vi /etc/yum.repos.d/vscode.repo

# 在vscode.repo中添加以下内容
# [code]
# name=Visual Studio Code
# baseurl=https://packages.microsoft.com/yumrepos/vscode
# enabled=1
# gpgcheck=1
# gpgkey=https://packages.microsoft.com/keys/microsoft.asc



# 保存并退出vscode.repo
# 使用以下命令安装最新版本的 Visual Studio 代码。
 sudo yum install code

# 一旦 Visual Studio Code 安装在你的 CentOS 机器上。
# 我们可以从（Applications -> Programming -> Visual Studio Code）打开它。
# 或者我们可以通过输入 code从命令行启动它：
# 如果 Visual Studio Code 应用程序图标未显示，请尝试注销并重新登录。
# 注意： 不要用root用户的状态下进行登录。
# 例如：

code --user-data-dir='~/.vscode-root'
# 所以需要将你的用户切为用户状态下。

# Vscode前端开发必安装的插件
# Vetur —— 语法高亮、智能感知、Emmet 等包含格式化功能， Alt+Shift+F （格式化全文），Ctrl+K Ctrl+F（格式化选中代码，两个 Ctrl需要同时按着）
# EsLint —— 语法纠错
# Auto Close TaTag —— 自动闭合
# HTML/XML 标签Auto Rename TaTag —— 自动完成另一侧标签的同步修改
# JavaScript(ES6) code snippets — — ES6 语 法 智 能 提 示 以 及 快 速 输 入 ， 除 js 外 还 支持.ts，.jsx，.tsx，.html，.vue，省去了配置其支持各种包含 js 代码文件的时间
# HTML CSS Support —— 让 html 标签上写 class 智能提示当前项目所支持的样式
# HTML Snippets —— html 快速自动补全
# Open in browser —— 浏览器快速打开
# Live Server —— 以内嵌服务器方式打开
# Chinese (Simplified) Language Pack for Visual Studio Code —— 中文语言包



