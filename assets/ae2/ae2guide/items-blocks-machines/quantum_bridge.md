---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 量子网络桥
  icon: quantum_ring
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:quantum_link
- ae2:quantum_ring
---

# 量子网络桥

![已成型的量子网络桥](../assets/diagrams/quantum_bridge_demonstration.png)

量子网络桥可以将[网络](../ae2-mechanics/me-network-connections.md)延伸至无限距离，甚至跨越维度。
它们总共可以传输32个频道（无论线缆如何连接到每一面），
本质上相当于一个无线的[致密线缆](cables.md#dense-cable)。

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/quantum_bridge_internal_structure_1.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/quantum_bridge_internal_structure_2.snbt" />

  <BoxAnnotation color="#33dd33" min="1 1 1" max="6 2 3">
        两个端点之间的虚拟线缆
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

需要注意的是，**两端都必须保持区块加载**，因此如果两端相距较远，
必须使用<ItemLink id="spatial_anchor" />或其他区块加载器。

# ME量子环

<BlockImage id="quantum_ring" scale="8" />

将8个此方块围绕<ItemLink id="quantum_link" />放置，即可创建一个量子网络桥。
只有与<ItemLink id="quantum_link" />相邻的4个<ItemLink id="quantum_ring" />方块可以接受网络连接，
4个角落的方块无法连接线缆。

## 合成表

<RecipeFor id="quantum_ring" />

# ME量子链接仓

<BlockImage id="quantum_link" scale="8" />

将一个此方块用<ItemLink id="quantum_ring" />包围，即可创建一个量子网络桥。
此方块不会连接任何线缆，只有在完整的桥梁建成时才会注册为网络的一部分。

此方块的物品栏只能容纳一个<ItemLink id="quantum_entangled_singularity" />，
且支持自动化访问。

## 合成表

<RecipeFor id="quantum_link" />
