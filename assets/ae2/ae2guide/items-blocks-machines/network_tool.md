---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 网络工具
  icon: network_tool
  position: 410
categories:
- tools
item_ids:
- ae2:network_tool
---

# 网络工具

<ItemImage id="network_tool" scale="4" />

网络工具是一个经过改装的[扳手](wrench.md)，它还能显示网络诊断信息，并可以存储[升级卡](upgrade_cards.md)。
虽然它保留了扳手快速拆卸物品和从线缆上取下[子部件](../ae2-mechanics/cable-subparts.md)的能力，但它无法旋转物品。

它有9个槽位用于存储[升级卡](upgrade_cards.md)，只要工具在你的背包中，这些升级卡就可以在任何AE2设备的UI中使用。

右键点击网络的任何部件都会显示一个诊断信息窗口，类似于右键点击<ItemLink id="controller" />。
此窗口会显示

*   网络中正在使用的频道数量
*   一个切换开关，用于在AE或E/FE之间切换能量显示的全局设置
*   网络中存储的[能量](../ae2-mechanics/energy.md)数量，以及网络的最大能量容量
*   网络的能量输入和消耗量
*   网络上所有[设备](../ae2-mechanics/devices.md)和组件的列表

在搭建[子网络](../ae2-mechanics/subnetworks.md)时，这个窗口也有助于判断两个不同的线缆或设备是否属于同一个网络。

## 隐藏伪装板

手持网络工具时，<a href="facades.md">伪装板</a>会被隐藏。

你可以直接与隐藏的伪装板后面的方块交互，而无需先移除伪装板。

## 合成表

<RecipeFor id="network_tool" />
