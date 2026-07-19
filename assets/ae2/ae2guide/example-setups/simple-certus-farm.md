---
navigation:
  parent: example-setups/example-setups-index.md
  title: 简易赛特斯石英农场
  icon: certus_quartz_crystal
  position: 110
---

# 简易赛特斯石英农场

如[赛特斯石英培育](../ae2-mechanics/certus-growth.md)中所述，自动化收获<ItemLink id="certus_quartz_crystal" />需要用到<ItemLink id="annihilation_plane" />和<ItemLink id="storage_bus" />。<ItemLink id="growth_accelerator" />用于大幅加速赛特斯石英芽的生长，然后破坏方块将完全长成的<ItemLink id="quartz_cluster" />破坏。它们通过利用一个非常幸运的特性来过滤：未成熟的赛特斯石英芽会掉落<ItemLink id="certus_quartz_dust" />而不是什么都不掉。

使用<ItemLink id="flawless_budding_quartz" />时，这个农场可以完全自动运行，但使用有瑕的、开裂的和损坏的赛特斯石英母岩时，你需要手动更换石英母岩。或者，如[半自动赛特斯石英农场](semiauto-certus-farm.md)和[高级赛特斯石英农场](advanced-certus-farm.md)中所述，可以实现自动化。

预计速度请参见[赛特斯石英培育](../ae2-mechanics/certus-growth.md)。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/simple_certus_farm.snbt" />

  <BoxAnnotation color="#dddddd" min="3.7 1 1" max="4 2 2">
        (1) 消灭面板：无GUI可配置，但可以附魔时运。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 1 1" max="3.3 2 2">
        (2) 存储总线 #1：过滤为赛特斯石英水晶。
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 1 .7" max="2 2 1">
        (3) 存储总线 #2：过滤为赛特斯石英水晶。优先级设置高于主存储。
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

<DiamondAnnotation pos="1 0.5 0.5" color="#00ff00">
        连接到主网络
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 配置

* 第一个<ItemLink id="annihilation_plane" />（1）没有GUI且无法配置，但可以附魔时运。
* 第一个<ItemLink id="storage_bus" />（2）过滤为<ItemLink id="certus_quartz_crystal" />。
* 第二个<ItemLink id="storage_bus" />（3）过滤为<ItemLink id="certus_quartz_crystal" />，并且其[优先级](../ae2-mechanics/import-export-storage.md#storage-priority)设置高于主存储。

## 工作原理

1. <ItemLink id="annihilation_plane" />尝试破坏其前方的方块，但由于子网络中唯一的存储是过滤为<ItemLink id="certus_quartz_crystal" />的<ItemLink id="storage_bus" />，因此它只能破坏<ItemLink id="quartz_cluster" />。
4. 第一个<ItemLink id="storage_bus" />将赛特斯石英水晶存储到桶中。
5. 第二个<ItemLink id="storage_bus" />让主网络可以访问桶中所有的赛特斯石英水晶。它被设置为高[优先级](../ae2-mechanics/import-export-storage.md#storage-priority)，这样赛特斯石英水晶会被优先放回桶中，而不是放入主存储。
