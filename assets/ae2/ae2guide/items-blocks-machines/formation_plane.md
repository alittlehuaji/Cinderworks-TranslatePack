---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 成型面板
  icon: formation_plane
  position: 210
categories:
- devices
item_ids:
- ae2:formation_plane
---

# 成型面板

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/formation_plane.snbt" />
</GameScene>

成型面板可以放置方块和掉落物品。它的工作方式类似于仅支持输入的<ItemLink id="storage_bus" />，
当[设备](../ae2-mechanics/devices.md)向[网络存储](../ae2-mechanics/import-export-storage.md)中插入物品时，如果物品被"存储"到成型面板中，它就会放置或掉落这些物品。
例如<ItemLink id="import_bus" />和<ItemLink id="interface" />。

<GameScene zoom="8" interactive={true}>
  <ImportStructure src="../assets/assemblies/formation_plane_demonstration.snbt" />
  <IsometricCamera yaw="255" pitch="30" />
</GameScene>

请注意，这类似于[管道子网](../example-setups/pipe-subnet.md)中的输入总线 -> 存储总线和接口 -> 存储总线的管道结构。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/import_storage_pipe.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_storage_pipe.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

这个[设备](../ae2-mechanics/devices.md)利用了存储总线在[管道子网](../example-setups/pipe-subnet.md)等场景中的机制，
如果你想掉落物品或放置方块而不是运输物品，可以用它来替代那些设置中的存储总线。

它们是[线缆子部件](../ae2-mechanics/cable-subparts.md)。

**请记得在你的区块领地中启用假玩家**

## 过滤

默认情况下，成型面板会放置/掉落任何物品。将物品放入过滤槽后会作为白名单，只允许放置这些特定的物品。

物品和流体可以从JEI/REI拖入槽中，即使你实际上没有该物品。

右键点击流体容器（如桶或流体储罐）可以将该流体设置为过滤器，而不是桶或储罐物品本身。

## 优先级

可以通过点击界面右上角的扳手来设置优先级。
进入网络的物品会从最高优先级的存储开始存放。

## 设置

*   成型面板可以设置为在世界中放置方块或掉落物品

## 升级

成型面板支持以下[升级卡](upgrade_cards.md)：

*   <ItemLink id="capacity_card" />增加过滤槽的数量
*   <ItemLink id="fuzzy_card" />允许成型面板按伤害值和/或忽略物品NBT进行过滤
*   <ItemLink id="inverter_card" />将过滤器从白名单切换为黑名单

## 合成配方

<RecipeFor id="formation_plane" />
