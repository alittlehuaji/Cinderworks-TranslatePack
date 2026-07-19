---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ME驱动器
  icon: drive
  position: 210
categories:
- devices
item_ids:
- ae2:drive
---

# ME驱动器

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/drive.snbt" />
</GameScene>

驱动器是一种[设备](../ae2-mechanics/devices.md)，你可以将[存储元件](storage_cells.md)插入其中，以将其用于[网络存储](../ae2-mechanics/import-export-storage.md)。它有10个插槽，每个插槽可容纳一个元件。

如果需要，你可以使用任何物品物流（如漏斗或AE2总线）来向其物品栏中放入或取出元件。

它可以使用<ItemLink id="certus_quartz_wrench" />进行旋转。

## 元件状态指示灯

驱动器中的元件上有一个LED指示灯，用于显示其状态：

| 颜色   | 状态                                                                                   |
| :----- | :------------------------------------------------------------------------------------- |
| 绿色   | 空                                                                                     |
| 蓝色   | 有部分存储内容                                                                         |
| 橙色   | [类型](../ae2-mechanics/bytes-and-types.md)已满，无法添加新类型                         |
| 红色   | [字节](../ae2-mechanics/bytes-and-types.md)已满，无法再插入更多物品                     |
| 黑色   | 无电力供应或驱动器没有[频道](../ae2-mechanics/channels.md)                              |

## 优先级

可以通过点击GUI右上角的扳手来设置优先级。
进入网络的物品将以最高优先级的存储作为其首选目标。
当两个存储或元件具有相同优先级时，如果其中一个已经包含该物品，则会优先选择该存储。
任何已[分区](cell_workbench.md)的元件在与同一优先级组的其他存储中，将被视为已包含该物品。
从存储中移除的物品将从最低优先级的存储中移除。
这种优先级系统意味着，随着物品在网络存储中被存入和取出，高优先级的存储将被填满，而低优先级的存储将被清空。

## 合成表

<RecipeFor id="drive" />
