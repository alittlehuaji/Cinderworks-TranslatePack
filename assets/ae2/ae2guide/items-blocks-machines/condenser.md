---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 物质聚合器
  icon: condenser
  position: 310
categories:
- machines
item_ids:
- ae2:condenser
---

# 物质聚合器

<BlockImage id="condenser" scale="8" />

物质聚合器既可以用作垃圾桶，也可以用来制造<ItemLink id="matter_ball" />和[奇点](singularities.md)。它可以接受存储元件能够存储的任何物品、流体等。

## 设置/配方

*   在垃圾桶模式下，物质聚合器会销毁所有进入其中的物品
*   在物质球模式下，聚合器会将你放入的任何物品转化为<ItemLink id="matter_ball" />。此模式需要在聚合器顶部插槽中放入一个存储组件。每个物质球需要256个物品或流体桶，因此一个<ItemLink id="cell_component_1k" />（提供8192位容量）就绰绰有余了。
*   在奇点模式下，聚合器会将你放入的任何物品转化为[奇点](singularities.md)。此模式需要在聚合器顶部插槽中放入一个存储组件。每个奇点需要256，000个物品或流体桶，因此一个<ItemLink id="cell_component_64k" />（提供524，288位容量）就绰绰有余了。

请注意，在后两种生产资源的模式下，物质聚合器*可能会*堵塞，当能源缓冲区和输出物品缓冲区都完全填满时，它将不再接受任何输入。

## 配方

<RecipeFor id="condenser" />
