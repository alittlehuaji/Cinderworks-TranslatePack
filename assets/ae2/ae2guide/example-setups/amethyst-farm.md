---
navigation:
  parent: example-setups/example-setups-index.md
  title: 紫水晶农场
  icon: minecraft:amethyst_shard
---

# 紫水晶农场

虽然<ItemLink id="growth_accelerator" />对紫水晶有效，但使用<ItemLink id="annihilation_plane" />过滤[石英芽](../items-blocks-machines/budding_certus.md)的常用方法对紫水晶芽不起作用。与掉落<ItemLink id="certus_quartz_dust" />的未成熟赛特斯石英芽不同，未成熟的紫水晶芽不掉落任何物品，因此破坏面板总是会破坏它们，因为网络总是能存储"无"。

解决方法是对破坏面板附魔精准采集。这样未成熟的紫水晶芽*确实*会掉落东西（各个阶段的实体芽方块），从而可以被过滤。

然后必须通过<ItemLink id="formation_plane" />将<ItemLink id="minecraft:amethyst_cluster" />重新放置，再由一个没有附魔精准采集的<ItemLink id="annihilation_plane" />重新破坏，以获得<ItemLink id="minecraft:amethyst_shard" />。

注意，由于紫水晶簇的方向性，成型面板正对面必须有一个完整的方块面。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/amethyst_farm.snbt" />

  <BoxAnnotation color="#dddddd" min="2.7 1 1" max="3 2 2">
        (1) 破坏面板 #1：没有GUI可供配置，但附魔了精准采集。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 1 1" max="2.3 2 2">
        (2) 成型面板：过滤为紫水晶簇。
        <ItemImage id="minecraft:amethyst_cluster" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 0.7 1" max="2 1 2">
        (3) 破坏面板 #2：没有GUI可供配置，但可以附魔时运。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 0 1" max="1.3 1 2">
        (4) 存储总线 #1：过滤为紫水晶碎片。
        <ItemImage id="minecraft:amethyst_shard" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 0 .7" max="1 1 1">
        (5) 存储总线 #2：过滤为紫水晶碎片。优先级设置高于主存储。
        <ItemImage id="minecraft:amethyst_shard" scale="2" />
  </BoxAnnotation>

<DiamondAnnotation pos="0 0.5 0.5" color="#00ff00">
        连接主网络
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 配置

* 第一个<ItemLink id="annihilation_plane" />（1）没有GUI，无法配置，但必须附魔精准采集。
* <ItemLink id="formation_plane" />（2）过滤为<ItemLink id="minecraft:amethyst_cluster" />。
* 第二个<ItemLink id="annihilation_plane" />（3）没有GUI，无法配置，但可以附魔时运。
* 第一个<ItemLink id="storage_bus" />（4）过滤为<ItemLink id="minecraft:amethyst_shard" />。
* 第二个<ItemLink id="storage_bus" />（5）过滤为<ItemLink id="minecraft:amethyst_shard" />，且其[优先级](../ae2-mechanics/import-export-storage.md#storage-priority)设置高于主存储。

## 工作原理

1. 第一个<ItemLink id="annihilation_plane" />尝试破坏其前方的方块，但只能破坏<ItemLink id="minecraft:amethyst_cluster" />，因为子网上唯一的存储是<ItemLink id="formation_plane" />，过滤为紫水晶簇。这之所以可行，是因为破坏面板附魔了精准采集，否则它能够破坏未成熟的芽，因为它们不掉落任何物品。
2. <ItemLink id="formation_plane" />将紫水晶簇放置在其对面的方块上。
3. 第二个<ItemLink id="annihilation_plane" />破坏紫水晶簇，产出<ItemLink id="minecraft:amethyst_shard" />。
4. 第一个<ItemLink id="storage_bus" />将紫水晶碎片存储在桶中。从技术上讲，这里不需要过滤，因为第二个破坏面板应该只会遇到完全长成的紫水晶簇。
5. 第二个<ItemLink id="storage_bus" />使主网络能够访问桶中的所有紫水晶碎片。它设置了高[优先级](../ae2-mechanics/import-export-storage.md#storage-priority)，这样紫水晶碎片会优先放回桶中，而不是存入主存储。
