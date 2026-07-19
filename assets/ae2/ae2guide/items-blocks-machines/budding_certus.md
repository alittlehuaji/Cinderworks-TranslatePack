---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 赛特斯石英母岩
  icon: flawless_budding_quartz
  position: 010
categories:
- misc ingredients blocks
item_ids:
- ae2:flawless_budding_quartz
- ae2:flawed_budding_quartz
- ae2:chipped_budding_quartz
- ae2:damaged_budding_quartz
- ae2:small_quartz_bud
- ae2:medium_quartz_bud
- ae2:large_quartz_bud
- ae2:quartz_cluster
---

# 赛特斯石英母岩

（另见[培育赛特斯石英](../ae2-mechanics/certus-growth.md)）

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/budding_blocks.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

赛特斯石英芽会从赛特斯石英母岩上萌发，类似于紫水晶。这些母岩可以在[陨石](../ae2-mechanics/meteorites.md)中找到。赛特斯石英母岩有4个等级：无瑕的、有瑕的、开裂的和损坏的。它们可以通过HWYLA、Jade、The One Probe等模组（或F3界面）来最方便地识别。

对于有瑕的、开裂的和损坏的赛特斯石英母岩，每次石英芽生长一个阶段，母岩都有几率降级一个等级，最终变成普通的<ItemLink id="quartz_block" />。

无瑕的赛特斯石英母岩不会因为培育石英芽而降级，可以作为无限来源。

如果使用普通镐破坏，赛特斯石英母岩会降级1个等级。如果使用附有精准采集的镐破坏，它们不会降级，除非它们是无瑕的。**这意味着无瑕的赛特斯石英母岩无法用镐拾取和移动**。不过，可以使用[空间存储](../ae2-mechanics/spatial-io.md)来剪切和粘贴无瑕的母岩。

## 合成配方

有瑕的、开裂的和损坏的赛特斯石英母岩可以通过将上一等级的母岩（或一个<ItemLink id="quartz_block" />）与一个或多个<ItemLink id="charged_certus_quartz_crystal" />一起丢入水中来合成。

无瑕的赛特斯石英母岩无法合成，只能在世界中找到。

<Row>
  <RecipeFor id="damaged_budding_quartz" />

  <RecipeFor id="chipped_budding_quartz" />

  <RecipeFor id="flawed_budding_quartz" />
</Row>
