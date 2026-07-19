---
navigation:
  parent: example-setups/example-setups-index.md
  title: 接口自动补给
  icon: interface
---

# 接口自动补给

有人可能会问"我如何保持一定数量的各种物品库存，并在需要时自动合成更多？"

一种解决方案是使用<ItemLink id="interface" />和<ItemLink id="crafting_card" />，从你网络的[自动合成](../ae2-mechanics/autocrafting.md)中自动请求新物品。此设置更适合维持大量种类物品的少量库存。

此演示设置被缩短了，以免太宽，最理想的方案是使用4个<ItemLink id="interface" />和4个<ItemLink id="storage_bus" />，以使用普通[线缆](../items-blocks-machines/cables.md)中的全部8个[频道](../ae2-mechanics/channels.md)。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_autostocking.snbt" />

<BoxAnnotation color="#dddddd" min="0 0 0" max="2 1 1">
        (1) 接口：设置为在自身中保持所需物品。它们装有合成卡。
        <ItemImage id="crafting_card" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 0" max="2 1.3 1">
        (2) 存储总线："输入/输出模式"设置为"仅提取"。
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        连接主网络
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 配置

* <ItemLink id="interface" />（1）设置为在自身中保持所需物品，方法是将所需物品点击到顶部槽位或从JEI拖拽到顶部槽位，然后点击槽位上方的扳手图标来设置数量。它们装有<ItemLink id="crafting_card" />。
* <ItemLink id="storage_bus" />（2）的"输入/输出模式"设置为"仅提取"。

## 工作原理

1. 如果<ItemLink id="interface" />无法从[网络存储](../ae2-mechanics/import-export-storage.md)中获取足够的已配置物品（并且它装有<ItemLink id="crafting_card" />），它将请求网络的[自动合成](../ae2-mechanics/autocrafting.md)合成更多该物品。
2. <ItemLink id="storage_bus" />允许网络访问接口的内容。