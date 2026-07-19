---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 存储元件
  icon: item_storage_cell_1k
  position: 410
categories:
- tools
item_ids:
- ae2:item_cell_housing
- ae2:fluid_cell_housing
- ae2:cell_component_1k
- ae2:cell_component_4k
- ae2:cell_component_16k
- ae2:cell_component_64k
- ae2:cell_component_256k
- ae2:item_storage_cell_1k
- ae2:item_storage_cell_4k
- ae2:item_storage_cell_16k
- ae2:item_storage_cell_64k
- ae2:item_storage_cell_256k
- ae2:fluid_storage_cell_1k
- ae2:fluid_storage_cell_4k
- ae2:fluid_storage_cell_16k
- ae2:fluid_storage_cell_64k
- ae2:fluid_storage_cell_256k
---

# 存储元件

<Column>
  <Row>
    <ItemImage id="item_storage_cell_1k" scale="4" />

    <ItemImage id="item_storage_cell_4k" scale="4" />

    <ItemImage id="item_storage_cell_16k" scale="4" />

    <ItemImage id="item_storage_cell_64k" scale="4" />

    <ItemImage id="item_storage_cell_256k" scale="4" />
  </Row>

  <Row>
    <ItemImage id="fluid_storage_cell_1k" scale="4" />

    <ItemImage id="fluid_storage_cell_4k" scale="4" />

    <ItemImage id="fluid_storage_cell_16k" scale="4" />

    <ItemImage id="fluid_storage_cell_64k" scale="4" />

    <ItemImage id="fluid_storage_cell_256k" scale="4" />
  </Row>
</Column>

存储元件是应用能源中的主要存储方式之一。它们可以放入<ItemLink id="drive" />或<ItemLink id="chest" />中。

关于容量的字节数和类型数的说明，请参阅[字节与类型](../ae2-mechanics/bytes-and-types.md)。

如果元件为空，可以通过手持元件Shift+右键来取出存储组件。

<Row>
    <Recipe id="upgrade/item_storage_cell_1k_to_4k" />

    你可以在工作台中将存储元件与更高等级的存储组件合成来进行升级。元件内的内容会被保留，低等级的组件会被退回。
</Row>

## 不同类型数量下的存储容量

[类型的额外开销](../ae2-mechanics/bytes-and-types.md)使得仅存储1种类型的元件能存储相当于全部63种类型时2倍的容量。

| 元件                                     | 存储1种类型时的总容量 | 存储63种类型时的总容量 |
| ---------------------------------------- | ----------------------------------------: | ------------------------------------------: |
| <ItemLink id="item_storage_cell_1k" />   |                                     8,128 |                                       4,160 |
| <ItemLink id="item_storage_cell_4k" />   |                                    32,512 |                                      16,640 |
| <ItemLink id="item_storage_cell_16k" />  |                                   130,048 |                                      66,560 |
| <ItemLink id="item_storage_cell_64k" />  |                                   520,192 |                                     266,240 |
| <ItemLink id="item_storage_cell_256k" /> |                                 2,080,768 |                                   1,064,960 |


## 分区

元件可以被配置为仅接受特定物品，类似于<ItemLink id="storage_bus" />的过滤方式。这需要在<ItemLink id="cell_workbench" />中进行配置。

你可以从JEI/REI中将物品拖入配置槽，即使你实际上并没有该物品。

## 升级卡

存储元件支持以下[升级卡](upgrade_cards.md)，通过<ItemLink id="cell_workbench" />安装：

*   <ItemLink id="fuzzy_card" />（不适用于流体元件）允许元件按物品耐久度和/或忽略物品NBT数据进行分区
*   <ItemLink id="inverter_card" />将过滤器从白名单切换为黑名单
*   <ItemLink id="equal_distribution_card" />为每种类型分配相同的字节空间，防止单一类型占满整个元件
*   <ItemLink id="void_card" />在元件已满时（或在使用均分卡时该类型分配的空间已满）销毁插入的物品，适用于防止农场堵塞。请注意做好分区！
*   便携元件可以安装<ItemLink id="energy_card" />来增加电池容量

## 染色

便携物品元件和便携流体元件可以像皮革盔甲一样染色，将元件与染料一起合成即可。

# 元件外壳

元件可以由存储组件和外壳合成，也可以用外壳围绕存储组件的方式合成：

<Row>
  <Recipe id="network/cells/item_storage_cell_1k" />

  <Recipe id="network/cells/item_storage_cell_1k_storage" />
</Row>

外壳本身的合成方式如下：

<Row>
  <RecipeFor id="item_cell_housing" />

  <RecipeFor id="fluid_cell_housing" />
</Row>

# 存储组件

存储组件是所有AE2元件的核心，决定了元件的容量。每提升一个等级，容量增加4倍，需要3个前一等级的组件。

<Column>
  <Row>
    <RecipeFor id="cell_component_1k" />

    <RecipeFor id="cell_component_4k" />

    <RecipeFor id="cell_component_16k" />
  </Row>

  <Row>
    <RecipeFor id="cell_component_64k" />

    <RecipeFor id="cell_component_256k" />
  </Row>
</Column>

# 物品存储元件

物品存储元件最多可存储63种不同类型的物品，所有标准容量等级均可使用。

<Column>
  <Row>
    <Recipe id="network/cells/item_storage_cell_1k_storage" />

    <Recipe id="network/cells/item_storage_cell_4k_storage" />

    <Recipe id="network/cells/item_storage_cell_16k_storage" />
  </Row>

  <Row>
    <Recipe id="network/cells/item_storage_cell_64k_storage" />

    <Recipe id="network/cells/item_storage_cell_256k_storage" />
  </Row>
</Column>

## 便携物品存储

它们就像口袋里的小型<ItemLink id="chest" />，或者说是一种背包。可以在<ItemLink id="charger" />中充电。

与标准存储元件不同的是，随着字节容量的增加，它们的类型容量反而*减少*，且总字节容量减半。

除了所有元件通用的升级卡外，它们还可以安装<ItemLink id="energy_card" />来升级内置电池。

<Column>
  <Row>
    <RecipeFor id="portable_item_cell_1k" />

    <RecipeFor id="portable_item_cell_4k" />

    <RecipeFor id="portable_item_cell_16k" />
  </Row>

  <Row>
    <RecipeFor id="portable_item_cell_64k" />

    <RecipeFor id="portable_item_cell_256k" />
  </Row>
</Column>

# 流体存储元件

流体存储元件最多可存储5种不同类型的流体，所有标准容量等级均可使用。

<Column>
  <Row>
    <Recipe id="network/cells/fluid_storage_cell_1k_storage" />

    <Recipe id="network/cells/fluid_storage_cell_4k_storage" />

    <Recipe id="network/cells/fluid_storage_cell_16k_storage" />
  </Row>

  <Row>
    <Recipe id="network/cells/fluid_storage_cell_64k_storage" />

    <Recipe id="network/cells/fluid_storage_cell_256k_storage" />
  </Row>
</Column>

## 便携流体存储

它们就像口袋里的小型<ItemLink id="chest" />，或者说是一种背包。可以在<ItemLink id="charger" />中充电。

与标准存储元件不同的是，随着字节容量的增加，它们的类型容量反而*减少*，且总字节容量减半。

除了所有元件通用的升级卡外，它们还可以安装<ItemLink id="energy_card" />来升级内置电池。

<Column>
  <Row>
    <RecipeFor id="portable_fluid_cell_1k" />

    <RecipeFor id="portable_fluid_cell_4k" />

    <RecipeFor id="portable_fluid_cell_16k" />
  </Row>

  <Row>
    <RecipeFor id="portable_fluid_cell_64k" />

    <RecipeFor id="portable_fluid_cell_256k" />
  </Row>
</Column>

# 创造存储元件

<Row>
  <ItemImage id="creative_storage_cell" scale="2" />
</Row>

创造元件**并不提供无限存储**。相反，它们充当你[分区](cell_workbench.md)所设定物品或流体的无限来源和接收器。
