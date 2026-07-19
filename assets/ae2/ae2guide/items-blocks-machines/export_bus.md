---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ME输出总线
  icon: export_bus
  position: 220
categories:
- devices
item_ids:
- ae2:export_bus
---

# ME输出总线

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/export_bus.snbt" />
</GameScene>

输出总线从[网络存储](../ae2-mechanics/import-export-storage.md)中取出物品和流体（以及其他内容，取决于附属模组），并将其推入其所接触的容器中。

为了减少延迟，如果输出总线最近没有导出任何物品，它会进入一种"休眠模式"，以较低频率运行；当成功导出物品时，它会唤醒并加速到满速（每秒4次操作）。

它们是[线缆子部件](../ae2-mechanics/cable-subparts.md)。

## 过滤

默认情况下，总线不会导出任何物品。向其过滤槽中放入物品将作为白名单，允许导出这些特定的物品和流体。

即使你实际上没有该物品，也可以从JEI/REI中将物品和流体拖入过滤槽。

用流体容器（如桶或流体储罐）右键点击可以将该流体设置为过滤项，而不是桶或储罐物品本身。

## 升级

输出总线支持以下[升级卡](upgrade_cards.md)：

*   <ItemLink id="capacity_card" /> 增加过滤槽的数量，并提供一个设置项来选择按什么顺序导出已过滤的物品。
*   <ItemLink id="speed_card" /> 增加每次操作移动的物品数量。
*   <ItemLink id="fuzzy_card" /> 允许总线按物品耐久度和/或忽略物品NBT数据进行过滤。
*   <ItemLink id="crafting_card" /> 允许总线向你的[自动合成](../ae2-mechanics/autocrafting.md)系统发送合成请求，以获取所需的物品。可以设置为从存储中取出物品（如果可用），或总是请求合成新物品。
*   <ItemLink id="redstone_card" /> 添加红石控制功能，允许在高信号、低信号时激活，或每次脉冲激活一次。

## 速度

| 加速卡数量 | 每次操作移动的物品数 |
|:-----------|:--------------------|
| 0          | 1                   |
| 1          | 8                   |
| 2          | 32                  |
| 3          | 64                  |
| 4          | 96                  |

## 合成配方

<RecipeFor id="import_bus" />
