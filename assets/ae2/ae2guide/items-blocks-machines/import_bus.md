---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ME输入总线
  icon: import_bus
  position: 220
categories:
- devices
item_ids:
- ae2:import_bus
---

# ME输入总线

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/import_bus.snbt" />
</GameScene>

输入总线从其接触的容器中拉取物品和流体（以及任何其他内容，取决于附属模组），并将其推入[网络存储](../ae2-mechanics/import-export-storage.md)。

为了减少卡顿，如果输入总线最近没有导入任何物品，它会进入一种"休眠模式"缓慢运行，当成功导入物品后会唤醒并加速到全速（每秒4次操作）。

它们是[线缆子部件](../ae2-mechanics/cable-subparts.md)。

## 过滤

默认情况下，总线会导入它可以访问的任何物品。将物品放入过滤槽后会作为白名单，仅允许导入这些特定的物品和流体。

即使你实际上没有该物品，也可以从JEI/REI中将物品和流体拖入过滤槽。

使用流体容器（如桶或流体储罐）右键点击可以将该流体设为过滤器，而非桶或储罐物品本身。

## 升级卡

输入总线支持以下[升级卡](upgrade_cards.md)：

*   <ItemLink id="capacity_card" /> 增加过滤槽的数量
*   <ItemLink id="speed_card" /> 增加每次操作移动的物品数量
*   <ItemLink id="fuzzy_card" /> 允许总线按耐久度过滤和/或忽略物品NBT数据
*   <ItemLink id="inverter_card" /> 将过滤器从白名单切换为黑名单
*   <ItemLink id="redstone_card" /> 添加红石信号控制，可设置为高信号激活、低信号激活或脉冲激活

## 速度

| 加速卡数量 | 每次操作移动的物品数 |
|:-------------------|:--------------------------|
| 0                  | 1                         |
| 1                  | 8                         |
| 2                  | 32                        |
| 3                  | 64                        |
| 4                  | 96                        |

## 合成配方

<RecipeFor id="import_bus" />
