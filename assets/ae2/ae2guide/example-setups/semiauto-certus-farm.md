---
navigation:
  parent: example-setups/example-setups-index.md
  title: 半自动赛特斯石英农场
  icon: certus_quartz_crystal
  position: 115
---

# 半自动赛特斯石英农场

不幸的是，[简易赛特斯石英农场](simple-certus-farm.md)需要<ItemLink id="flawless_budding_quartz" />才能完全自动运行。这需要使用[空间IO](../ae2-mechanics/spatial-io.md)或在[陨石](../ae2-mechanics/meteorites.md)处建造农场。

然而，AE2可以放置和破坏方块，所以完全可以让你的农场*自动替换石英母岩*。（你需要定期将一些<ItemLink id="flawed_budding_quartz" />放入输入桶，并从废弃石英母岩桶中取出<ItemLink id="quartz_block" />）

要完全自动实现这一点，请参见[高级赛特斯石英农场](advanced-certus-farm.md)。

这个农场比[简易赛特斯石英农场](simple-certus-farm.md)稍微复杂一些，因为它实际上是3个独立设置组合在一起。

预计速度请参见[赛特斯石英培育](../ae2-mechanics/certus-growth.md)。

**这是一个复杂建筑，有些部分被其他部分遮挡，请旋转视角从各个角度查看**

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/semiauto_certus_farm.snbt" />

  <BoxAnnotation color="#ddaaaa" min="3.7 2 1" max="4 3 2">
        (1) 消灭面板 #1：无GUI可配置，但可以附魔时运。
  </BoxAnnotation>

  <BoxAnnotation color="#ddaaaa" min="2 2 1" max="2.3 3 2">
        (2) 存储总线 #1：过滤为赛特斯石英水晶。
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 2.5 1.5" color="#ff0000">
    石英簇破坏子网络
  </DiamondAnnotation>

  <BoxAnnotation color="#aaddaa" min="3.7 1 1" max="4 2 2">
        (3) 消灭面板 #2：无GUI可配置，但附魔了精准采集。
  </BoxAnnotation>

  <BoxAnnotation color="#aaddaa" min="2 1 1" max="2.3 2 2">
        (4) 存储总线 #2：过滤为赛特斯石英块。
        <BlockImage id="quartz_block" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 1.5 1.5" color="#00ff00">
    石英块破坏子网络
  </DiamondAnnotation>

  <BoxAnnotation color="#ffddaa" min="4 0.7 1" max="5 1 2">
        (5) 生成面板：使用默认配置。
  </BoxAnnotation>

  <BoxAnnotation color="#ffddaa" min="2 0 1" max="2.3 1 2">
        (6) 输入总线：使用默认配置。
  </BoxAnnotation>

  <DiamondAnnotation pos="3 0.5 1.5" color="#ddcc00">
    母岩放置子网络
  </DiamondAnnotation>

  <BoxAnnotation color="#aaaadd" min="0.7 2 1" max="1 3 2">
        (7) 存储总线 #3：过滤为赛特斯石英水晶。优先级设置高于主存储。
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

    <DiamondAnnotation pos="1.5 0.5 1.5" color="#00ff00">
        手动放入有瑕的赛特斯石英母岩。
        <BlockImage id="flawed_budding_quartz" scale="2" />
    </DiamondAnnotation>

    <DiamondAnnotation pos="1.5 1.5 1.5" color="#00ff00">
        手动取出赛特斯石英块。
        <BlockImage id="quartz_block" scale="2" />
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0" color="#00ff00">
        连接到主网络
    </DiamondAnnotation>

  <IsometricCamera yaw="165" pitch="5" />
</GameScene>

## 配置

### 石英簇破坏器：

* 第一个<ItemLink id="annihilation_plane" />（1）没有GUI且无法配置，但可以附魔时运。
* 第一个<ItemLink id="storage_bus" />（2）过滤为<ItemLink id="certus_quartz_crystal" />。

### 石英块破坏器：

* 第二个<ItemLink id="annihilation_plane" />（3）没有GUI且无法配置，但必须附魔精准采集。
* 第二个<ItemLink id="storage_bus" />（4）过滤为<ItemLink id="quartz_block" />。

### 母岩放置器：

* <ItemLink id="formation_plane" />（5）使用默认配置。
* <ItemLink id="import_bus" />（6）使用默认配置。

### 主网络上：

* 第三个<ItemLink id="storage_bus" />（7）过滤为<ItemLink id="certus_quartz_crystal" />，并且其[优先级](../ae2-mechanics/import-export-storage.md#storage-priority)设置高于主存储。

## 工作原理

### 石英簇破坏器：

石英簇破坏子网络的工作方式与[简易赛特斯石英农场](simple-certus-farm.md)中的子网络非常相似。

1. <ItemLink id="annihilation_plane" />尝试破坏其前方的方块，但由于子网络中唯一的存储是过滤为<ItemLink id="certus_quartz_crystal" />的<ItemLink id="storage_bus" />，因此它只能破坏<ItemLink id="quartz_cluster" />。
2. <ItemLink id="storage_bus" />将赛特斯石英水晶存储到桶中。

### 石英块破坏器

石英块破坏子网络用于在废弃的母岩变成普通的<ItemLink id="quartz_block" />后将其破坏。它的工作方式与石英簇破坏器类似。

1. <ItemLink id="annihilation_plane" />尝试破坏其前方的方块，但由于子网络中唯一的存储是过滤为<ItemLink id="quartz_block" />的<ItemLink id="storage_bus" />，因此它只能破坏<ItemLink id="quartz_block" />。该面板需要附魔精准采集，这样母岩在被破坏时不会降级，从而避免面板过早破坏母岩。
2. <ItemLink id="storage_bus" />将赛特斯石英块存储到废弃石英母岩桶中，你需要手动将其与<ItemLink id="charged_certus_quartz_crystal" />一起丢入水中来刷新它。

### 母岩放置器

母岩放置子网络用于在破坏器子网络破坏旧的废弃母岩后放置新的<ItemLink id="flawed_budding_quartz" />。

1. <ItemLink id="import_bus" />从输入桶中导入一块母岩。
2. 子网络中唯一的存储是<ItemLink id="formation_plane" />，它会放置母岩。

### 主网络上

* <ItemLink id="storage_bus" />让主网络（以及[充能器自动化](charger-automation.md)）可以访问桶中所有的赛特斯石英水晶。它被设置为高[优先级](../ae2-mechanics/import-export-storage.md#storage-priority)，这样赛特斯石英水晶会被优先放回桶中，而不是放入主存储。