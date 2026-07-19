---
navigation:
  parent: example-setups/example-setups-index.md
  title: 高级赛特斯石英农场
  icon: certus_quartz_crystal
  position: 120
---

# 高级赛特斯石英农场

这基本上就是[半自动赛特斯石英农场](semiauto-certus-farm.md)，只不过它已经完全集成到你的ME网络中了。

与大量囤积石英母岩并每隔一段时间手动刷新不同，这个方案使用[充能器自动化](charger-automation.md)和[丢水自动化](throw-in-water-automation.md)来自动完成这一切。

预估速度请参阅[赛特斯石英培育](../ae2-mechanics/certus-growth.md)。

**这是一个复杂的建筑，有些东西被其他东西挡住了，请旋转视角从各个角度查看**

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/advanced_certus_farm.snbt" />

  <BoxAnnotation color="#ddaaaa" min="3.7 2 1" max="4 3 2">
        (1) 破坏面板 #1：没有GUI可供配置，但可以附魔时运。
  </BoxAnnotation>

  <BoxAnnotation color="#ddaaaa" min="2 2 1.7" max="3 3 2">
        (2) 存储总线 #1：过滤为赛特斯石英水晶。
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 2.5 1.5" color="#ff0000">
    石英簇破坏子网
  </DiamondAnnotation>

  <BoxAnnotation color="#aaddaa" min="3.7 1 1" max="4 2 2">
        (3) 破坏面板 #2：没有GUI可供配置，但必须附魔精准采集。
  </BoxAnnotation>

  <BoxAnnotation color="#aaddaa" min="2 1 1.7" max="3 2 2">
        (4) 存储总线 #2：过滤为赛特斯石英块。
        <BlockImage id="quartz_block" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 1.5 1.5" color="#00ff00">
    石英块破坏子网
  </DiamondAnnotation>

  <BoxAnnotation color="#ffddaa" min="4 0.7 1" max="5 1 2">
        (5) 成型面板：默认配置。
  </BoxAnnotation>

  <BoxAnnotation color="#ffddaa" min="2 0.7 2" max="3 1 3">
        (6) 输入总线：过滤为有瑕的赛特斯石英母岩。
        <BlockImage id="flawed_budding_quartz" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 0.5 1.5" color="#ddcc00">
    母岩放置子网
  </DiamondAnnotation>

  <BoxAnnotation color="#aaaadd" min="1.7 2 2" max="2 3 3">
        (7) 存储总线 #3：过滤为赛特斯石英水晶。优先级设置高于主存储。
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#aaaadd" min="2 1 2" max="3 2 3">
        (8) 接口：设置为在自身中保持1个有瑕的赛特斯石英母岩，带有合成卡。
        <Row><BlockImage id="flawed_budding_quartz" scale="2" /> <ItemImage id="crafting_card" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="1.5 0.5 0" color="#00ff00">
        连接主网络、充能器自动化和丢水自动化
        <Row>
        <GameScene zoom="3" background="transparent">
          <ImportStructure src="../assets/assemblies/charger_automation.snbt" />
          <IsometricCamera yaw="195" pitch="30" />
        </GameScene>
        <GameScene zoom="3" background="transparent">
          <ImportStructure src="../assets/assemblies/throw_in_water.snbt" />
          <IsometricCamera yaw="195" pitch="30" />
        </GameScene>
        </Row>
    </DiamondAnnotation>

  <IsometricCamera yaw="165" pitch="5" />
</GameScene>

## 配置

### 石英簇破坏器：

* 第一个<ItemLink id="annihilation_plane" />（1）没有GUI，无法配置，但可以附魔时运。
* 第一个<ItemLink id="storage_bus" />（2）过滤为<ItemLink id="certus_quartz_crystal" />。

### 石英块破坏器：

* 第二个<ItemLink id="annihilation_plane" />（3）没有GUI，无法配置，但必须附魔精准采集。
* 第二个<ItemLink id="storage_bus" />（4）过滤为<ItemLink id="quartz_block" />。

### 母岩放置器：

* <ItemLink id="formation_plane" />（5）为默认配置。
* <ItemLink id="import_bus" />（6）过滤为<ItemLink id="flawed_budding_quartz" />。

### 主网络部分：

* 第三个<ItemLink id="storage_bus" />（7）过滤为<ItemLink id="certus_quartz_crystal" />，且其[优先级](../ae2-mechanics/import-export-storage.md#storage-priority)设置高于主存储。
* <ItemLink id="interface" />（8）设置为在自身中保持1个有瑕的赛特斯石英母岩，并带有<ItemLink id="crafting_card" />。

## 工作原理

### 石英簇破坏器：

石英簇破坏子网的工作方式与[简单赛特斯石英农场](simple-certus-farm.md)中的子网非常相似。

1. <ItemLink id="annihilation_plane" />尝试破坏其前方的方块，但只能破坏<ItemLink id="quartz_cluster" />，因为子网上唯一的存储是<ItemLink id="storage_bus" />，过滤为<ItemLink id="certus_quartz_crystal" />。
2. <ItemLink id="storage_bus" />将赛特斯石英水晶存储在桶中。

### 石英块破坏器

石英块破坏子网的作用是在耗尽的石英母岩变成普通的<ItemLink id="quartz_block" />后将其破坏。
其工作方式与石英簇破坏器类似。

1. <ItemLink id="annihilation_plane" />尝试破坏其前方的方块，但只能破坏<ItemLink id="quartz_block" />，因为子网上唯一的存储是<ItemLink id="storage_bus" />，过滤为<ItemLink id="quartz_block" />。破坏面板需要附魔精准采集，这样石英母岩在被破坏时不会降级，从而不会被过早破坏。
2. <ItemLink id="storage_bus" />将赛特斯石英块存储在<ItemLink id="interface" />中，使[丢水自动化](throw-in-water-automation.md)能够用它来制作新的<ItemLink id="flawed_budding_quartz" />。

### 母岩放置器

母岩放置子网的作用是在破坏子网破坏掉旧的耗尽母岩后放置一个新的<ItemLink id="flawed_budding_quartz" />。

1. <ItemLink id="import_bus" />从<ItemLink id="interface" />中导入石英母岩到[网络存储](../ae2-mechanics/import-export-storage.md)中。
2. 子网上唯一的存储是<ItemLink id="formation_plane" />，它会放置石英母岩。

### 主网络部分

* <ItemLink id="storage_bus" />使主网络（以及[充能器自动化](charger-automation.md)）能够访问桶中的所有赛特斯石英水晶。它设置了高[优先级](../ae2-mechanics/import-export-storage.md#storage-priority)，这样赛特斯石英水晶会优先放回桶中，而不是存入主存储。
* <ItemLink id="interface" />使母岩放置子网能够获取<ItemLink id="flawed_budding_quartz" />，并为石英块破坏子网提供将耗尽方块送回主网络的途径。<ItemLink id="crafting_card" />允许接口从主网络的[自动合成](../ae2-mechanics/autocrafting.md)中请求新的石英母岩。
