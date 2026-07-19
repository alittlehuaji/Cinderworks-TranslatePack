---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 能源元件
  icon: energy_cell
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:energy_cell
- ae2:dense_energy_cell
- ae2:creative_energy_cell
---

# 能源元件

<Row gap="20">
  <BlockImage id="energy_cell" scale="8" p:fullness="4" />

  <BlockImage id="dense_energy_cell" scale="8" p:fullness="4" />

  <BlockImage id="creative_energy_cell" scale="8" />
</Row>

能源元件为网络提供更多的[能源](../ae2-mechanics/energy.md)存储。一定量的能源缓冲有助于平滑大量物品存入或取出时的能源消耗峰值，而更大的能源存储量则允许网络在无法产生能源时（例如夜间使用太阳能板）继续运行，或应对[空间存储](../ae2-mechanics/spatial-io.md)产生的巨大瞬时能源消耗。

## 填充条

<Row>
<BlockImage id="energy_cell" scale="4" p:fullness="0" />
<BlockImage id="energy_cell" scale="4" p:fullness="1" />
<BlockImage id="energy_cell" scale="4" p:fullness="2" />
<BlockImage id="energy_cell" scale="4" p:fullness="3" />
<BlockImage id="energy_cell" scale="4" p:fullness="4" />
</Row>

元件侧面的条形指示器对应其当前的能量水平。

*   充能低于25%时显示0格
*   充能在25%到50%之间时显示1格
*   充能在50%到75%之间时显示2格
*   充能在75%到99%之间时显示3格
*   充能高于99%时显示4格

## 元件类型

*   <ItemLink id="energy_cell" /> 可以存储200k AE，对于大多数使用场景来说一个就足够了，能够轻松应对正常使用中的能源波动。
*   <ItemLink id="dense_energy_cell" /> 可以存储1.6M AE，适用于需要依靠存储能源运行网络的场景，或应对大型[空间存储](../ae2-mechanics/spatial-io.md)装置产生的巨大瞬时能源消耗。
*   <ItemLink id="creative_energy_cell" /> 是一个创造模式物品，用于测试，提供无限能源。

## 合成配方

<Row>
  <RecipeFor id="energy_cell" />

  <RecipeFor id="dense_energy_cell" />
</Row>
