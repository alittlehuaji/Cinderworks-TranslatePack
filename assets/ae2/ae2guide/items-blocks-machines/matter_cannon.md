---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 物质炮
  icon: matter_cannon
  position: 410
categories:
- tools
item_ids:
- ae2:matter_cannon
---

# 物质炮

<ItemImage id="matter_cannon" scale="4" />

物质炮是一种便携式轨道炮，可以发射小型物品作为弹药，如<ItemLink id="matter_ball" />和金属粒。伤害取决于发射的物品，"较重"的物品如金粒（10点伤害）比较轻的物品如物质球（2点伤害）造成更多伤害。每次射击消耗1600 AE的基础能量。

当配置选项"matterCannonBlockDamage"为true时，火炮会根据方块硬度和弹药伤害来破坏方块。

它的能量可以在<ItemLink id="charger" />中充能。

物质炮的行为类似[存储元件](storage_cells.md)，其弹匣可以最便捷地通过将火炮放入<ItemLink id="chest" />的存储元件槽位来填充。

## 升级

物质炮支持以下[升级卡](upgrade_cards.md)，通过<ItemLink id="cell_workbench" />插入：

*   <ItemLink id="fuzzy_card" /> 让元件按物品耐久度分区和/或忽略物品NBT
*   <ItemLink id="inverter_card" /> 将过滤器从白名单切换为黑名单
*   <ItemLink id="speed_card" /> 增加每次射击使用的能量，使发射威力更大
*   <ItemLink id="void_card" /> 在元件已满时销毁插入的物品。注意要进行分区！
*   <ItemLink id="energy_card" /> 用于增加电池容量

## 合成配方

<RecipeFor id="matter_cannon" />
