---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 伪装板
  icon: facade
  icon_components:
    "ae2:facade_item": "minecraft:stone"
  position: 110
categories:
- 网络基础设施
item_ids:
- ae2:facade
---

# 伪装板

伪装板可以让你的基地看起来更整洁。它们可以覆盖两种尺寸的线缆，并且可以由多种方块制成。

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/facades_1.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

它们可以覆盖线缆的所有面，但会允许[子组件](../ae2-mechanics/cable-subparts.md)和线缆连接穿过。

<GameScene zoom="6"  interactive={true}>
  <ImportStructure src="../assets/assemblies/facades_2.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

巧妙地使用它们来提升基地的美观度，或者制作每个面都有不同纹理的方块。

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/facades_3.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 隐藏伪装板

当任意一只手持有<a href="network_tool.md">网络工具</a>时，伪装板会被隐藏。

你可以直接与隐藏的伪装板后方的方块互动，无需先移除伪装板。

## 合成配方

将你想要纹理的方块放在4个<ItemLink id="cable_anchor" />的中间。

![伪装板合成配方](../assets/diagrams/facade_recipe.png)
