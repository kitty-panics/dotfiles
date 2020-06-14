#
# ~/.zprofile
#

# Defining variables.
#
# This color requires special attention from the user.
green='\033[32m'
# This color is used to display the process of script execution.
red='\033[31m'
# This color is used to display additional information.
yellow='\033[33m'
# Color End Flag.
reset='\033[0m'

echo -e "\n"

# 公用模块
common_Module() {
    # 获取当前用户的密码
    echo -e "$green ===>> Please enter the current user password: $reset"
    sudo get_Password >/dev/null 2>&1
    echo -e "$yellow => Done. $reset"

    # 设置环境变量
    echo -e "$red ===>> Set environment variable. $reset"
    echo -e "$yellow => Done. $reset"

  # 自定义 PATH
    # 手动安装的软件包
    export PATH="$PATH:$HOME/.config/Manual/bin"
    export PATH="$HOME/.config/Manual/ubin:$PATH"
    # 安装在用户目录的 Python 包
    export PATH="$PATH:$HOME/.local/bin"
    # 安装在用户目录的 Node.js 包
    export PATH="$PATH:$HOME/.node_modules/bin"
    # 安装在用户目录的 Perl 包
    export PATH="$PATH:$HOME/.perl5/bin"
    # 安装在用户目录的 Ruby 包
    export PATH="$PATH:$HOME/.gem/ruby/2.7.0/bin"
  # 一些程序所需的变量
    # 设置 Node.js 包的全局安装路径
    export npm_config_prefix="$HOME/.node_modules"
    # 设置 Perl 所需的变量
    export PERL5LIB="$HOME/perl5/lib/.perl5"
    export PERL_LOCAL_LIB_ROOT="$HOME/.perl5"
    export PERL_MB_OPT="--install_base \"$HOME/.perl5\""
    export PERL_MM_OPT="INSTALL_BASE=$HOME/.perl5"

    # 赋予可执行权限
    echo -e "$red ===>> Give script executable permissions. $reset"
    echo -e "$yellow => Done. $reset"

  # 自定义的 PATH
    # 手动安装的软件包
    #chmod -R +x "$HOME/.config/Manual/bin"
    chmod -R +x "$HOME/.config/Manual/bin"
    # 安装在用户目录的 Python 包
    chmod -R +x "$HOME/.local/bin"
    # 安装在用户目录的 Node.js 包
    chmod -R +x "$HOME/.node_modules/bin"
    # 安装在用户目录的 Perl 包
    chmod -R +x "$HOME/.perl5/bin"
    # 安装在用户目录的 Ruby 包
    chmod -R +x "$HOME/.gem/ruby/2.7.0/bin"
}

# 执行 common_Module 函数
common_Module

# 网络配置模块
network_Config_Module() {
    # 初始化网络配置
    echo -e "$red ===>> Initialize network configuration. $reset"
    echo -e "$yellow => Done. $reset"

    # 停止之前的网络连接进程
    sudo killall dhcpcd >/dev/null 2>&1
    sudo killall wpa_supplicant >/dev/null 2>&1
    # 关闭网络接口
    sudo ip link set dev enp3s0 down >/dev/null 2>&1
    sudo ip link set dev wlo1 down >/dev/null 2>&1
    # 随机化 MAC 地址
    sudo macchanger -r enp3s0 >/dev/null 2>&1
    sudo macchanger -r wlo1 >/dev/null 2>&1
    # 打开网络接口
    sudo ip link set dev enp3s0 up >/dev/null 2>&1
    sudo ip link set dev wlo1 up >/dev/null 2>&1
}

# 网络连接变量模块
network_Variable_Module() {
    echo -e "$green ===>> Set network connection variables? $reset [ (y)Yes / (any)No ]"
    read -r network_Var
    echo -e "$yellow => Done. $reset"
    if [[ "$network_Var" == y ]]; then
        for (( i = 49; i < 61; i++ ));do
            # 去掉注释
            sed -i "$i s/#//" "$HOME/.xinitrc"
        done
    else
        for (( i = 49; i < 61; i++ ));do
            # 先去掉注释以防止重复插入注释)
            sed -i "$i s/#//" "$HOME/.xinitrc"
            # 添加注释
            sed -i "$i s/^/#/" "$HOME/.xinitrc"
        done
    fi
}

# 网络连接
network_Connection() {
    if [[ "$1" == i3 ]]; then
      echo -e "$green ===>> Connect to network type? $reset [ (e)Ethernet / (w)Wireless / (any)Non ]"
      read -r network_Type
      echo -e "$yellow => Done. $reset"

        if [[ "$network_Type" == e ]]; then
            # 执行 network_Config_Module 函数
            network_Config_Module
            # 执行 network_Variable_Module 函数
            network_Variable_Module
            # 连接有线网络 (IPv4)
            sudo dhcpcd -b -4 enp3s0 >/dev/null 2>&1
        elif [[ "$network_Type" == w ]]; then
            # 执行 network_Config_Module 函数
            network_Config_Module
            # 执行 network_Variable_Module 函数
            network_Variable_Module
            # 连接无线网络 (IPv4)
            sudo wpa_supplicant -B -i wlo1 -c "$HOME/.config/wpa_supplicant/wifi.conf" >/dev/null 2>&1
            sudo dhcpcd -b -4 wlo1 >/dev/null 2>&1
        else
            # 执行 network_Variable_Module 函数
            network_Variable_Module
        fi
    elif [[ "$1" == kde ]]; then
        # 执行 network_Variable_Module 函数
        network_Variable_Module
        # 启动 NetworkManager 服务
        sudo systemctl restart NetworkManager.service
    else
        :
    fi
}

# 启动 I3
start_I3() {
    echo -e "$red ===>> Start i3wm. $reset"
    echo -e "$yellow => Done. $reset"

    if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
        # 准备工作
        sed -i '$c exec i3' "$HOME/.xinitrc"
        # 开始启动 i3
        exec startx &> /dev/null
    fi
}

# 启动 KDE
#start_KDE() {
#    echo -e "$red ===>> Start KDE. $reset"
#    echo -e "$yellow => Done. $reset"
#
#    if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#        sed -i '$c exec startkde' "$HOME/.xinitrc"
#        exec startx &> /dev/null
#    fi
#}

# 使用 WM (I3) 还是 DE (KDE)
WM_or_DE() {
    echo -e "$green Please select use WM or Non: $reset [ (w)WM / (any)Non ]"
    read -r wm_de
    echo -e "$yellow => Done. $reset"
    if [[ "$wm_de" == w ]]; then
        network_Connection "i3"
        start_I3
    #elif [[ "$wm_de" == d ]]; then
    #    network_Connection "kde"
    #    start_KDE
    else
        :
    fi
}

# 执行 WM_or_DE 函数
WM_or_DE
