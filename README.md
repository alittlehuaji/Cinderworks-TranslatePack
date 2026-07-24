# Cinderworks | 汉化包

[![Action](../../actions/workflows/release.yml/badge.svg)](../../actions/workflows/release.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)

> 本资源包使用了生成式人工智能技术来协助翻译

## 如何使用

### 方式一：直接下载（推荐）

前往仓库的 **[Releases](../../releases/latest)** 页面，下载最新版的 `Cinderworks_TranslatePack-*.zip`，即可跳过下面的打包步骤，直接进行[安装](#安装)

> Release 中的 zip 由 GitHub Actions 自动打包，结构已经符合要求，下载后无需解压即可使用

### 方式二：自行打包

将 `assets` 文件夹连同 `pack.mcmeta`（见下）一起压缩成一个 `.zip` 文件。**注意：压缩包内的第一层必须直接是 `assets/` 和 `pack.mcmeta`，而不是再套一层项目文件夹。**

```
Cinderworks_TranslatePack.zip
├── assets/
│   └── xxx
└── pack.mcmeta
```

打包命令示例：

```bash
# Linux / macOS
zip -r Cinderworks_TranslatePack.zip assets pack.mcmeta
```

```powershell
# Windows PowerShell
Compress-Archive -Path assets, pack.mcmeta -DestinationPath Cinderworks_TranslatePack.zip
```

### 安装

1. 打开 Minecraft 存放资源包的文件夹：游戏内 **选项 → 资源包 → 打开资源包文件夹**（`.minecraft/resourcepacks/`）
2. 把打包好的 `.zip` 文件（或直接把整个项目文件夹）放进该目录
3. 回到游戏 **选项 → 资源包**，将本资源包从「可用」移动到「已选」一侧，点击「完成」

## 遇到问题？

如果你在使用过程中发现翻译错误、排版问题，或者资源包无法正常加载，欢迎到 GitHub 仓库提交 issue：

- 👉 [提交 Issue](../../issues/new/choose)

提交时请尽量按照 issue 模板填写游戏版本、模组版本、问题描述、截图和日志，方便我们更快定位问题。也欢迎直接提交 Pull Request 帮助改进翻译

## 引用说明

资源包图标来自于 [Pixiv 二象性冰淇淋](https://www.pixiv.net/artworks/129136484)

## 许可协议

本项目基于 [MIT License](./LICENSE) 开源。你可以自由使用、修改和分发，但请保留原始的版权与许可声明

> 本资源包为非官方社区汉化，与 Mojang Studios、Microsoft 或任何模组开发者无关