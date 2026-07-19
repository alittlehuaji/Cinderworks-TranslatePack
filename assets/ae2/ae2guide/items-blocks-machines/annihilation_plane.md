---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ME破坏面板
  icon: annihilation_plane
  position: 210
categories:
- devices
item_ids:
- ae2:annihilation_plane
---

# ME破坏面板

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/annihilation_plane.snbt" />
</GameScene>

ME破坏面板可以破坏方块并拾取物品。它的工作方式与<ItemLink id="import_bus" />类似，将物品推入[网络存储](../ae2-mechanics/import-export-storage.md)。要拾取物品，物品必须碰撞到面板的正面，它不会在区域内拾取物品。

ME破坏面板可以附魔任何镐类附魔，所以没错，你可以在多个面板上叠加高等级的时运附魔来[自动化矿石处理](../example-setups/ore-fortuner.md)（如果你的整合包允许的话）。此外，精准采集的效果和你预期的一样，效率附魔会降低破坏方块的能量消耗，耐久附魔则有概率不消耗任何能量。

它们是[线缆子部分](../ae2-mechanics/cable-subparts.md)。

**记得在你的区块声明中启用假人玩家**

## 过滤

ME破坏面板只有在能够将掉落物/物品存入其网络时，才会破坏方块或拾取物品。这意味着要对其进行过滤，*你必须限制其网络中可存储的内容*，最可能的方式是将其放置在[子网络](../ae2-mechanics/subnetworks.md)上。一个<ItemLink id="storage_bus" />或[存储元件](../items-blocks-machines/storage_cells.md)可以被[分区](cell_workbench.md)以实现这一目的。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/annihilation_filtering.snbt" />

  <DiamondAnnotation pos="1 0.5 0.5" color="#00ff00">
        过滤为你想要破坏的物品所掉落的东西。
  </DiamondAnnotation>

  <DiamondAnnotation pos=".5 0.5 2.5" color="#00ff00">
        分区为你想要破坏的物品所掉落的东西。
  </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

再次强调，它是*根据物品掉落物*来过滤的，所以，例如，如果你想过滤破坏<ItemLink id="minecraft:amethyst_cluster" />，你需要一个附有精准采集的面板，否则每个之前的生长阶段都不会掉落任何东西，面板无论如何都会破坏它们，因为网络总是可以存储"无"。

## 合成配方

<RecipeFor id="annihilation_plane" />
