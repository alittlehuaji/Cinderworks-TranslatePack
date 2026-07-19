---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ME存储总线
  icon: storage_bus
  position: 220
categories:
- devices
item_ids:
- ae2:storage_bus
---

# 存储总线

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/storage_bus.snbt" />
</GameScene>

你是否曾想过*保留*你的箱子怪物，而不是用合理的东西替代它？我们为你介绍存储总线！

存储总线可以将其接触的容器转化为[网络存储](../ae2-mechanics/import-export-storage.md)。它通过允许网络查看该容器的内容，并通过向该容器存入和取出物品来满足[设备](../ae2-mechanics/devices.md)对网络存储的存取需求。

由于AE2的设计理念是通过[设备](../ae2-mechanics/devices.md)功能之间的交互产生涌现机制，你不一定*必须*将存储总线用于*存储*。通过使用[子网络](../ae2-mechanics/subnetworks.md)使存储总线（或少量存储总线）成为网络上*唯一的*存储，你可以将其用作物品传输的来源或目的地。（参见["管道子网络"](../example-setups/pipe-subnet.md)）

重要提示：像抽屉这样的大型优化容器是没问题的，但像巨型箱子这样具有大量槽位的大型*未优化*容器与存储总线配合使用时会导致严重的性能问题。

它们是[线缆子组件](../ae2-mechanics/cable-subparts.md)。

## 过滤

默认情况下，总线会存储所有物品。将物品放入过滤槽后会起到白名单的作用，只允许存储那些特定的物品。

物品和流体可以从JEI/REI拖入过滤槽，即使你实际没有该物品。

使用流体容器（如桶或流体储罐）右键点击可以将该流体设置为过滤项，而不是桶或储罐物品本身。

## 优先级

可以通过点击界面右上角的扳手来设置优先级。进入网络的物品会优先存入最高优先级的存储设备。如果两个存储设备优先级相同，且其中一个已包含该物品，则会优先选择该存储设备。在同一优先级组中，带有过滤的存储设备会被视为已包含该物品。从存储中取出物品时，会从最低优先级的存储设备中取出。这个优先级系统意味着随着物品在网络存储中的存取，高优先级的存储会被填满，低优先级的存储会被清空。

## 设置

*   总线可以根据相邻容器中的当前物品进行分区（过滤）
*   可以设置网络是否能够查看相邻容器中总线无法提取的物品（例如，存储总线无法从<ItemLink id="inscriber" />的中间输入槽提取物品）
*   总线可以在存入和取出时都进行过滤，或仅在存入时过滤
*   总线可以设置为双向、仅存入或仅取出模式

## 升级

存储总线支持以下[升级卡](upgrade_cards.md)：

*   <ItemLink id="capacity_card" /> 增加过滤槽的数量
*   <ItemLink id="fuzzy_card" /> 允许总线按损坏等级和/或忽略物品NBT进行过滤
*   <ItemLink id="inverter_card" /> 将过滤从白名单切换为黑名单
*   <ItemLink id="void_card" /> 当连接的容器已满时销毁插入的物品，有助于防止农场堵塞。请注意进行分区！

## 合成表

<RecipeFor id="storage_bus" />
