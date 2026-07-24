# Release 工作流说明

本目录中的 [`release.yml`](./release.yml) 用于自动构建资源包，并在推送版本 Tag 时创建 GitHub Release

## 如何推送正式版本 Tag

正式版本使用 `v主版本.次版本.修订号` 格式，例如 `v1.0.0`、`v1.2.3`

首先确认当前分支已经包含准备发布的内容，并已将提交推送到远程仓库。然后创建并推送 Tag：

```bash
git tag v1.0.0
git push origin v1.0.0
```

也可以一次推送所有尚未推送的本地 Tag：

```bash
git push origin --tags
```

> Tag 指向创建它时的提交。创建前应使用 `git status` 和 `git log -1` 确认当前提交正确

推送成功后，工作流会生成 `Cinderworks_TranslatePack-v1.0.0.zip`，并创建正式 GitHub Release

如果 Tag 创建在了错误的提交上，应先删除本地和远程 Tag，再在正确提交上重新创建：

```bash
git tag -d v1.0.0
git push origin :refs/tags/v1.0.0
git tag v1.0.0
git push origin v1.0.0
```

## 如何推送预发布版本

预发布版本在标准版本号后添加以 `-` 开头的标识，例如：

- `v1.0.0-alpha`
- `v1.0.0-beta.1`
- `v1.0.0-rc.1`

创建并推送方式与正式版本相同：

```bash
git tag v1.0.0-beta.1
git push origin v1.0.0-beta.1
```

工作流通过 Tag 是否包含 `-` 判断预发布版本。因此，上述 Tag 会生成 `Cinderworks_TranslatePack-v1.0.0-beta.1.zip`，并将 GitHub Release 标记为 **Pre-release**

## 工作流程

### Tag 推送

推送符合 `v主版本.次版本.修订号` 命名形式的 Tag 后，工作流依次执行：

1. 检出该 Tag 指向的提交
2. 将 `VERSION` 设置为 Tag 名，例如 `v1.0.0`
3. 调用仓库根目录的 `build.sh` 构建资源包
4. 生成 `Cinderworks_TranslatePack-${VERSION}.zip`
5. 将 ZIP 上传为该次 Actions 运行的 Artifact
6. 创建对应的 GitHub Release，并自动生成 Release Notes
7. 将 ZIP 上传为 Release 附件
8. 如果 Tag 包含 `-`，将 Release 标记为预发布版本；否则创建正式版本

```text
推送版本 Tag
    ↓
检出 Tag 对应提交
    ↓
调用 build.sh 打包
    ↓
上传 Actions Artifact
    ↓
创建 GitHub Release
    ↓
上传 ZIP 附件
```

### 手动运行

也可以在 GitHub 仓库的 **Actions → Release → Run workflow** 中手动运行

手动运行时：

- `VERSION` 为 `dev`
- 生成 `Cinderworks_TranslatePack-dev.zip`
- ZIP 会上传为 Actions Artifact
- 不会创建 GitHub Release

## 版本号建议

版本号建议遵循语义化版本：

- 修复翻译错误：递增修订号，例如 `v1.0.0` → `v1.0.1`
- 增加较多翻译内容：递增次版本号，例如 `v1.0.1` → `v1.1.0`
- 发生不兼容或大规模结构调整：递增主版本号，例如 `v1.1.0` → `v2.0.0`
