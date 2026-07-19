---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: 空间IO
  icon: spatial_storage_cell_2
---

# 空间IO

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/spatial_storage_1x1x1.snbt" />

  <BoxAnnotation color="#33dd33" min="1 1 1" max="2 2 2">
        需要移动的区域
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />

</GameScene>

空间IO是一种在你的世界中剪切粘贴物理空间区域的方式。它可以用来移动<ItemLink id="flawless_budding_quartz" />、
在你的基地中设置一个可以更换各种内饰以用于不同目的的房间，甚至可以移动末地传送门！

它的工作原理是将定义的区域与空间存储维度中大小相同的区域进行*交换*，将塔阵列中的内容发送到空间存储维度，同时将维度中的内容发送回塔阵列。

这意味着如果你有在维度之间旅行的方式（空间IO*可以*用来制作传送器，但这样做非常复杂，有点不稳定，而且超出了本指南的范围），你可以将它们用作自定义大小的压缩空间或口袋维度。

# 多方块结构设置

空间IO需要其组件的特定排列才能工作，并定义要剪切粘贴的区域。

所有组件必须在同一个[网络](me-network-connections.md)上才能工作，并且你只能在一个网络上设置一个空间IO。因此，建议使用[子网络](subnetworks.md)。

## 空间IO端口

<BlockImage id="spatial_io_port" p:powered="true" scale="4" />

<ItemLink id="spatial_io_port" />控制空间IO操作。它显示多方块结构的统计数据，并持有[空间元件](../items-blocks-machines/spatial_cells.md)。

它显示：
- 网络中存储的和最大的[能量](energy.md)
- 执行操作所需的能量。这可能非常大且会被瞬间使用，所以确保你有足够的[能源元件](../items-blocks-machines/energy_cells.md)来容纳所有能量。
- 塔阵列的效率
- 定义区域的大小

要执行空间IO操作，将空间存储元件放入输入槽，并给空间IO端口一个红石信号。
然后它会将塔中的区域与空间存储维度中的区域进行*交换*。这意味着如果你将一些方块发送到空间存储维度，*然后在塔中放置另一组方块*，将元件放回输入槽，并再次触发IO端口，第二组方块将会消失，第一组方块将会重新出现。

**注意：定义区域中的任何实体，包括你，都会被一起传送，如果你没有办法出去，你将被困在空间存储维度中，在一个黑暗、毫无特征的盒子里。** 用这个来恶作剧你的朋友！

## 空间塔

<BlockImage id="spatial_pylon" p:powered_on="true" scale="4" />

<ItemLink id="spatial_pylon" />是空间IO设置的主要部分，并定义要影响的区域。

该区域由塔外部的边界框定义，在所有方向上向内收缩1个方块。

规则如下：
- 最小尺寸为3x3x3（定义1x1x1的区域）
- 所有空间塔必须在外部边界框内
- 所有空间塔必须在同一个网络上
- 所有塔必须至少2个方块长

例如，假设你想定义一个3x3x3的区域。根据规则2，所有塔必须在你想要定义的区域周围的5x5x5外壳内。它们可以是几乎任何配置，只要它们包含在那个1方块厚的5x5x5外壳内。

<GameScene zoom="4" interactive={true}>
<ImportStructure src="../assets/assemblies/spatial_storage_3x3x3_pylon_demonstration.snbt" />

<BoxAnnotation color="#33dd33" min="1 1 1" max="4 4 4">
        需要移动的区域
  </BoxAnnotation>

<BoxAnnotation color="#3333ff" min="5 5 0" max="0 0 5">
  </BoxAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

更合理的设置是这样的：

<GameScene zoom="4" interactive={true}>
<ImportStructure src="../assets/assemblies/better_spatial_storage_3x3x3.snbt" />

<BoxAnnotation color="#33dd33" min="1 1 1" max="4 4 4">
        需要移动的区域
  </BoxAnnotation>

<BoxAnnotation color="#3333ff" min="5 5 0" max="0 0 5">
  </BoxAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 效率

塔阵列的效率取决于你填充的外壳数量。围绕大区域的最小设置将非常低效，可能需要*数十亿*AE。

## 元件尺寸

一旦[空间元件](../items-blocks-machines/spatial_cells.md)被使用，它就会获得一组永久定义的XYZ尺寸（例如，3x4x2），并与空间存储维度中的一个空间区域相关联。
**在使用后，你无法重置、重新格式化或调整空间元件的大小。** 如果你想使用不同的尺寸，请制作新的元件。

这些尺寸与元件名称中的尺寸不同，一个16^3元件可以有任何*最大*16x16x16的尺寸。

注意，这个区域是有方向性的，不能旋转。2x2x3的区域与3x2x2的区域不同，即使它们大小相同。

如果元件的XYZ尺寸与定义的区域（在IO端口中显示）不匹配，IO端口将不会工作。