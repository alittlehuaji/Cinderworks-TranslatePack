---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ME箱子
  icon: chest
  position: 210
categories:
- devices
item_ids:
- ae2:chest
---

# ME箱子

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/chest.snbt" />
</GameScene>

ME箱子就像是一个集成了<ItemLink id="terminal" />、<ItemLink id="drive" />和<ItemLink id="energy_acceptor" />的迷你网络。虽然它可以作为小型存储网络使用，但它只能容纳一个[存储元件](../items-blocks-machines/storage_cells.md)，因此作为存储网络的实用性有限。

相反，它更适用于与其中安装的存储元件进行交互。其集成终端只能查看和访问已安装驱动器中的物品，而常规网络上的[设备](../ae2-mechanics/devices.md)可以访问任何[网络存储](../ae2-mechanics/import-export-storage.md)中的物品，包括ME箱子。

它有2种不同的GUI界面，且物品传输有方向限制。与顶部终端交互会打开集成终端。可以通过该面将物品放入已安装的存储元件中，但不能取出。与其他任何面交互会打开带有存储元件槽位和优先级设置的GUI界面。存储元件只能通过带有元件槽位的那一面进行物品物流的放入和取出。

可以使用<ItemLink id="certus_quartz_wrench" />旋转。

它有一个小型AE能源缓冲区，因此如果不在拥有[能源元件](../items-blocks-machines/energy_cells.md)的网络上，一次性放入或取出过多物品可能会导致能源不足。

终端可以使用<ItemLink id="color_applicator" />上色。

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/chest_color.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 设置

ME箱子拥有与<ItemLink id="terminal" />或<ItemLink id="crafting_terminal" />相同的设置。但它不支持<ItemLink id="view_cell" />。

## 元件状态指示灯

箱子中的元件上有一个LED指示灯，显示其状态：

| 颜色   | 状态                                                                       |
| :----- | :------------------------------------------------------------------------- |
| 绿色   | 空                                                                         |
| 蓝色   | 有内容物                                                                   |
| 橙色   | [类型](../ae2-mechanics/bytes-and-types.md)已满，无法添加新类型             |
| 红色   | [字节](../ae2-mechanics/bytes-and-types.md)已满，无法放入更多物品           |
| 黑色   | 无能源或驱动器没有[频道](../ae2-mechanics/channels.md)                      |

## 优先级

可以通过点击元件槽位GUI右上角的扳手来设置优先级。进入网络的物品会以最高优先级的存储作为首选目的地。如果两个存储或元件具有相同的优先级，且其中一个已经包含该物品，则会优先选择该存储。任何[已分区](cell_workbench.md)的元件在与同一优先级组中的其他存储相比时，会被视为已包含该物品。从存储中取出物品时，会从最低优先级的存储中取出。这种优先级系统意味着随着物品在网络存储中的存入和取出，高优先级的存储会被优先填满，低优先级的存储会被优先清空。

## 合成配方

<RecipeFor id="chest" />
