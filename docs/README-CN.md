# Dotfiles

![License-MIT](https://img.shields.io/badge/License-MIT-blue.svg)
![Docs-Passing](https://img.shields.io/badge/Docs-Passing-green.svg)

中文 | [English](../README.md)

此仓库用于存放我的 dotfiles，同时它也是个 dotfiles 管理工具。

## 特性

+ 完全模块化
+ 高度可配置 (同时也具有高风险)
+ 包含了一些自用的 [脚本]

[脚本]: https://git.io/Jf6uB

## 如何使用

如果你烦于配置各种软件，可以使用我的配置文件，按照如下步骤执行即可。

+ ``git clone --depth=1 https://github.com/aj-ash/dotfiles``
+ 根据自身需求修改 ``dotfiles/files/Restore-List.md`` 文件
+ ``cd dotfiles/tools``
+ ``bash Restore.sh``
+ ~~``rm -rf ../../dotfiles``~~

**备注：**

配置文件中可能没有你需要的软件的配置，且配置文件可能更符合我的使用习惯。

## 继续开发

如果你想在我的 dotfiles 之上继续开发/使用，可能需要了解以下内容。

```Text
├── docs                   // 存放各类文档
│   └── README-CN.md       // 示例文档 (中文的 README 文档)
├── files                  // 存放各软件的配置 (建议一个软件使用一个目录)
│   ├── aria2              // 示例配置 (aria2)
│   │   └── Script         // 用于存放 aria2 相关的脚本
│   │   │   └── Restore.sh // 单独的 aria2 恢复脚本
│   │   ├── aria2.conf     // aria2 的配置文件
│   ├── zsh                // 示例配置 (zsh)
│   │   ├── Script         // 用于存放 zsh 相关的脚本
│   │   │   └── Restore.sh // 单独的 aria2 恢复脚本
│   │   ├── .zprofile      // zsh 的配置文件
│   │   └── .zshrc         // zsh 的配置文件
│   ├── Restore-List.md    // 统一管理 files 目录中各软件的状态
├── LICENSE                // 许可协议
├── README.md              // 英文的 README 文档
└── tools                  // dotfiles 管理器的程序主体
    └── Restore.sh         // 入口程序
```

## TODO

下一代 ``dotfiles manager`` 概述。

+ [ ] 去除 ``Restore-List.md``，改为在每个程序中单独配置 "是否开启恢复配置" 选项
+ [ ] 去除每个程序的 ``Restore.sh`` 恢复脚本，改用 ``JSON`` 作为配置文件
+ [ ] 入口 ``Restore.sh`` 改名为 ``dfs``，并支持更多参数

## 许可证

[MIT](../LICENSE)
