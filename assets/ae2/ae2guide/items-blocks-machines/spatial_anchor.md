---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 空间锚
  icon: spatial_anchor
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:spatial_anchor
---

# 空间锚

<BlockImage id="spatial_anchor" p:powered="true" scale="8"/>

AE2网络需要被区块加载，其[设备](../ae2-mechanics/devices.md)才能正常运作。如果只有部分网络被加载，它可能无法正常工作。空间锚解决了这个问题，它会强制加载其网络所占据的区块。一条跨越区块边界的线缆就足以加载那个新区块。

它会将其"加载"传播到[量子桥](quantum_bridge.md)上，但不会跨维度传播。所以如果你有一个通往下界的量子桥，你需要在基地的网络和下界的网络上各放置一个空间锚。

默认情况下，它还会在其加载的区块中启用随机刻，这可以在ae2配置中关闭。

如果出于某种原因你想旋转它，可以使用<ItemLink id="certus_quartz_wrench" />来旋转。

## 设置

*   空间锚提供了一个全局设置，可以选择以AE或E/FE为单位查看能量。
*   可以显示一个世界中的全息投影，展示正在加载的区块。

## 能量

空间锚将根据以下公式消耗[能量](../ae2-mechanics/energy.md)：

e = 80 + (x\*(x+1))/2

其中x是正在加载的区块数量

## 合成配方

<RecipeFor id="spatial_anchor" />
