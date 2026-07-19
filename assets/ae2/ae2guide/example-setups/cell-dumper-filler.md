---
navigation:
  parent: example-setups/example-setups-index.md
  title: 元件倾倒或填充
  icon: io_port
---

# 元件倾倒或填充

你可能会问："如何快速将元件中的物品倒入箱子、抽屉阵列或背包中，或者反过来，从这些容器中填充元件？"

答案是使用<ItemLink id="io_port" />和一些子网来限制它放置物品或拉取物品的位置。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/cell_dumper_filler.snbt" />

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 2 1">
        (1) ME IO端口：可以使用GUI中间的箭头按钮设置为"将数据传输到网络"或"将数据传输到存储元件"。装有3张加速卡。
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0.7 0" max="1 1 1">
        (2) 存储总线：默认配置。
  </BoxAnnotation>

<BoxAnnotation color="#33dd33" min="0 1 0" max="1 2 1">
        在此处放置你想要填充或倾倒的容器。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 0.35 0.35" max="2.3 0.65 0.65">
        石英光纤：仅在能源来源是另一个网络时需要。
  </BoxAnnotation>

<DiamondAnnotation pos="3 0.5 0.5" color="#00ff00">
        连接到某个能源，如另一个网络或能源接收器。
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 配置

* <ItemLink id="io_port" />（1）可以使用GUI中间的箭头按钮设置为"将数据传输到网络"或"将数据传输到存储元件"。装有3张加速卡以达到最大速度。
* <ItemLink id="storage_bus" />（2）为默认配置。

## 工作原理

### 在"传输到网络"模式下

1. <ItemLink id="io_port" />尝试将插入的[存储元件](../items-blocks-machines/storage_cells.md)中的内容倾倒到[网络存储](../ae2-mechanics/import-export-storage.md)中。
2. 子网上唯一的存储是<ItemLink id="storage_bus" />，它将物品或流体等存储在你放置在其前方的容器中。
* <ItemLink id="energy_cell" />提供了足够大的[能量](../ae2-mechanics/energy.md)缓冲区，使得网络不会因为每游戏刻传输大量物品而耗尽能源。

### 在"传输到存储元件"模式下

1. <ItemLink id="io_port" />尝试将[网络存储](../ae2-mechanics/import-export-storage.md)中的内容倾倒到插入的[存储元件](../items-blocks-machines/storage_cells.md)中。
2. 子网上唯一的存储是<ItemLink id="storage_bus" />，它从你放置在其前方的容器中拉取物品或流体等。
* <ItemLink id="energy_cell" />提供了足够大的[能量](../ae2-mechanics/energy.md)缓冲区，使得网络不会因为每游戏刻传输大量物品而耗尽能源。