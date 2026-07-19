---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 触发总线
  icon: toggle_bus
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:toggle_bus
- ae2:inverted_toggle_bus
---

# 触发总线

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/assemblies/toggle_bus.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

一种功能类似于<ItemLink id="fluix_glass_cable" />或其他线缆的总线，但它允许通过红石信号来切换其连接状态。这使你可以切断[ME网络](../ae2-mechanics/me-network-connections.md)的某个部分。

当提供红石信号时，该组件会启用连接，而<ItemLink id="inverted_toggle_bus" />则提供相反的行为——禁用连接。

值得注意的是，切换这些总线可能会导致网络重启并重新计算已连接的设备。

它们是[线缆子部件](../ae2-mechanics/cable-subparts.md)。

## 合成配方

<RecipeFor id="toggle_bus" />

<RecipeFor id="inverted_toggle_bus" />
