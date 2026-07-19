---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 催生器
  icon: growth_accelerator
  position: 310
categories:
- machines
item_ids:
- ae2:growth_accelerator
---

# 催生器

<BlockImage id="growth_accelerator" p:powered="true" scale="8"/>

催生器放置在石英母岩旁边时，可以大幅加速赛特斯石英或紫水晶的[生长](../ae2-mechanics/certus-growth.md)。

有趣的是，它*同样*可以加速各种植物的生长。

它通过在自然随机刻之外，额外对相邻方块施加"随机刻"来实现加速。
理论上，这意味着1个催生器应该能让作物的生长速度比正常快约90倍，且效果可以叠加。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/growth_accelerator.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

可以通过顶部或底部供能，使用AE2的[线缆](cables.md)或其他模组的能量线缆均可。它可以
接受AE2的能量（AE）或Forge能量（FE）。

要手动供能，可以在顶部或底部放置一个<ItemLink id="crank" />并右键点击它。

顶部和底部可以通过粉色的通量装饰件来识别。

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/accelerator_connections.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 合成配方

<RecipeFor id="growth_accelerator" />
