---
navigation:
  parent: example-setups/example-setups-index.md
  title: 专用本地存储
  icon: drive
---

# 专用本地存储

利用[接口的特殊行为](../items-blocks-machines/interface.md#special-interactions)之一，[子网络](../ae2-mechanics/subnetworks.md)可以将其存储的内容展示给主网络，同时无法看到主网络的存储，且仅占用1个[频道](../ae2-mechanics/channels.md)。

这对于农场的本地存储非常有用，这样物品就不会溢出到你的主存储中。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/local_storage.snbt" />

<BoxAnnotation color="#dddddd" min="4 0 0" max="5 2 1">
        (1) 某种导入物品的方式（此处为接口）
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 0 0" max="4 1 1">
        (2) 驱动器：内含一些元件。元件应筛选为农场所输出的物品。
        元件可以装有均分卡和溢出销毁卡。
        <Row><ItemImage id="item_storage_cell_4k" scale="2" /> <ItemImage id="equal_distribution_card" scale="2" /> <ItemImage id="void_card" scale="2" /></Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 1 0" max="4 2 0.3">
        (3) 合成终端：可以看到子网上驱动器的内容，但看不到主网络存储的内容。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 0 0" max="2.3 1 1">
        (4) 接口 2：默认配置。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1.7 0 0" max="2 1 1">
        (5) 存储总线：优先级设置高于主存储，可筛选为农场所输出的物品。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 2 0.3">
        合成终端：可以看到主网络存储的内容*和*子网络的内容。
  </BoxAnnotation>

<DiamondAnnotation pos="0 0.5 0.5" color="#00ff00">
        连接主网络
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 配置

* 第一个<ItemLink id="interface" />（1）简单地接受来自农场的物品并将其推入子网络。
* <ItemLink id="drive" />（2）内含一些[元件](../items-blocks-machines/storage_cells.md)。元件应[分区](../items-blocks-machines/cell_workbench.md)为农场所输出的物品。元件可以装有<ItemLink id="equal_distribution_card" />和<ItemLink id="void_card" />。
* 第二个<ItemLink id="interface" />（4）为默认配置。
* <ItemLink id="storage_bus" />的[优先级](../ae2-mechanics/import-export-storage.md#storage-priority)设置高于主存储。它可以筛选为农场所输出的物品。

## 工作原理

* 子网络上的<ItemLink id="interface" />向主网络上的<ItemLink id="storage_bus" />展示<ItemLink id="drive" />中元件的内容。这意味着存储总线可以直接从驱动器中的元件拉取物品或将物品推入其中。
* 存储总线设置了高[优先级](../ae2-mechanics/import-export-storage.md#storage-priority)，因此物品会优先放回子网络，而不是放入主存储。
* 重要的是，如果子网络中的元件满了，物品不会溢出到主网络。如果是那种备份会出问题的农场，可以使用<ItemLink id="void_card" />来删除多余的物品。
* 如果农场输出多种物品，<ItemLink id="equal_distribution_card" />可以防止一种物品填满所有元件而导致其他物品无法存储。