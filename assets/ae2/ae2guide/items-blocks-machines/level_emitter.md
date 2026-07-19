---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 标准发信器
  icon: level_emitter
  position: 220
categories:
- devices
item_ids:
- ae2:level_emitter
- ae2:energy_level_emitter
---

# 标准发信器

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/level_emitter.snbt" />
</GameScene>

标准发信器会根据[网络存储](../ae2-mechanics/import-export-storage.md)中某种物品的数量发出红石信号。

还有一个版本会根据网络中存储的[能量](../ae2-mechanics/energy.md)发出红石信号。

即使你实际没有某种物品，也可以从 JEI/REI 中将物品或流体拖入槽位。

右键点击流体容器（如桶或流体储罐）可以将该流体设置为过滤器，而不是桶或储罐物品本身。

它们是[线缆子部件](../ae2-mechanics/cable-subparts.md)。

与其他[设备](../ae2-mechanics/devices.md)不同，标准发信器**不需要**[频道](../ae2-mechanics/channels.md)。

## 设置

*   标准发信器可以设置为"大于/等于"或"小于"模式
*   当插入<ItemLink id="crafting_card" />时，可以设置为"物品合成时发出红石信号"或"发出红石信号以触发合成"

## 升级

标准发信器支持以下[升级卡](upgrade_cards.md)：

*   <ItemLink id="fuzzy_card" /> 让发信器按物品耐久度过滤和/或忽略物品NBT
*   <ItemLink id="crafting_card" /> 启用合成功能

## 合成功能

如果插入了<ItemLink id="crafting_card" />，发信器将切换到合成模式。

这会启用两个选项：

第一个选项"物品合成时发出红石信号"，会在你的[自动合成](../ae2-mechanics/autocrafting.md)通过<ItemLink id="pattern_provider" />合成特定物品时发出红石信号。这对于仅在实际使用时才开启特定的高耗能自动化工厂很有用。

第二个选项"发出红石信号以触发合成"，对于特定用例非常有用，如无限农场和只有概率产出而非必定产出的自动化工厂。
此设置会为[自动合成](../ae2-mechanics/autocrafting.md)创建一个虚拟[样板](patterns.md)，用于发信器过滤槽中的物品。
（为确保功能正常，你的<ItemLink id="pattern_provider" />中**不应存在**相同物品的实际样板）

这个"样板"不定义，也不关心配方材料。
它只是说"如果你从这个标准发信器发出红石信号，ME系统将在未来某个时刻收到这个物品"。这通常用于激活和停用无需输入材料的无限农场，或激活[处理递归配方的系统](../example-setups/recursive-crafting-setup.md)（标准自动合成无法理解），例如，如果你有一台可以复制圆石的机器，就可以实现"1个圆石 = 2个圆石"。

## 合成配方

<RecipeFor id="level_emitter" />

<RecipeFor id="energy_level_emitter" />
