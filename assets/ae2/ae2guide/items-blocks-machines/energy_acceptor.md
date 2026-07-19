---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 能源接收器
  icon: energy_acceptor
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:energy_acceptor
---

# 能源接收器

<Row gap="20">
<BlockImage id="energy_acceptor" scale="8" /> 

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/cable_energy_acceptor.snbt" />
</GameScene>
</Row>

能源接收器将其他科技模组中常见的能源形式转换为AE2内部的[能源](../ae2-mechanics/energy.md)形式——AE。虽然<ItemLink id="controller" />也能做到这一点，但控制器的面是宝贵的资源，因此使用能源接收器通常是更好的选择。

Forge Energy和Techreborn Energy的转换比率如下：

*   2 FE = 1 AE（Forge）
*   1 E  = 2 AE（Fabric）

转换速度完全取决于你的网络能存储多少AE，原因在[此页面](../ae2-mechanics/energy.md)中有解释。

## 变体

能源接收器有2种不同的变体：普通型和平板型/[子部分](../ae2-mechanics/cable-subparts.md)。这使得你可以让某些布局更加紧凑。

能源接收器可以在合成台中在普通型和平板型之间切换。

## 合成表

<RecipeFor id="energy_acceptor" />

<RecipeFor id="cable_energy_acceptor" />