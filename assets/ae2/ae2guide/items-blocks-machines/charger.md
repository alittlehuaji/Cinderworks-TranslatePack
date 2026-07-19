---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 充能器
  icon: charger
  position: 310
categories:
- machines
item_ids:
- ae2:charger
---

# 充能器

<BlockImage id="charger" scale="8" />

充能器可以为受支持的工具以及<ItemLink id="certus_quartz_crystal" />充能。

能源可通过顶部或底部输入，使用AE2的[线缆](cables.md)或其他模组的能量线缆均可。它可以接受AE2的能源（AE）或Forge能源（FE）。物品可以从任意面放入或取出。只有充能完成的物品才能被取出，因此无需使用过滤器来防止误取未充能的赛特斯石英水晶。可以使用<ItemLink id="certus_quartz_wrench" />旋转充能器以便于自动化。

可用于将<ItemLink id="certus_quartz_crystal" />转化为<ItemLink id="charged_certus_quartz_crystal" />，以及将<ItemLink id="minecraft:compass" />转化为<ItemLink id="meteorite_compass" />。

如需手动供能，可在顶部或底部放置一个<ItemLink id="crank" />并右键点击，直到物品充能完成。

它同时也是[福鲁伊克斯研究员](fluix_researcher.md)的工作站点。

## 简易自动化

例如，充能器的可旋转性使其可以像这样进行半自动化：

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/charger_hopper.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 合成配方

<RecipeFor id="charger" />
