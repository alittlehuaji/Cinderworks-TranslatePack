---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ME IO端口
  icon: io_port
  position: 210
categories:
- devices
item_ids:
- ae2:io_port
---

# ME IO端口

<BlockImage id="io_port" p:powered="true" scale="8" />

IO端口允许你快速将[存储元件](../items-blocks-machines/storage_cells.md)填充或清空到[网络存储](../ae2-mechanics/import-export-storage.md)，或从网络存储中取出。

可以使用<ItemLink id="certus_quartz_wrench" />旋转它。

## 设置

*   IO端口可以设置为在元件为空、满或工作完成时，将元件移动到输出槽。
*   如果插入了<ItemLink id="redstone_card" />，将出现各种红石条件的选项。
*   在界面中央有一个箭头，用于设置物品传输方向：从元件到[网络存储](../ae2-mechanics/import-export-storage.md)，或从存储到元件。

## 升级

IO端口支持以下[升级](upgrade_cards.md)：

*   <ItemLink id="speed_card" />增加每次操作传输的物品数量
*   <ItemLink id="redstone_card" />添加红石控制，允许在高信号、低信号或每次脉冲时激活

## 合成配方

<RecipeFor id="io_port" />
