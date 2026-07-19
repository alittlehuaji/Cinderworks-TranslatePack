---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ME接口
  icon: interface
  position: 210
categories:
- devices
item_ids:
- ae2:interface
- ae2:cable_interface
---

# ME接口

<Row gap="20">
<BlockImage id="interface" scale="8" />
<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/cable_interface.snbt" />
</GameScene>
</Row>

ME接口就像一个小型箱子和流体储罐，它会根据你在槽位中设置的库存内容，从[网络存储](../ae2-mechanics/import-export-storage.md)中自动补充或清空。它会在一个游戏刻内完成这一操作，因此每个游戏刻可以填充或清空最多9组物品，如果你有快速的物品管道，这是一种快速的导入或导出方法。

另一个有用的特性是，虽然大多数流体储罐只能存储1种流体，但ME接口可以存储最多9种流体以及物品。它们本质上就是带有一些额外功能的箱子/多流体储罐，你可以通过将它们与任何网络断开来禁用这些额外功能。因此，在需要存储少量多种不同物品的特殊场景中，它们非常有用。

## ME接口的内部工作原理

如前所述，ME接口本质上是一个箱子/储罐，附带了一些超级<ItemLink id="import_bus" />和<ItemLink id="export_bus" />，以及一堆<ItemLink id="level_emitter" />。

<GameScene zoom="3" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_internals.snbt" />

  <BoxAnnotation color="#dddddd" min="1.3 0.3 1.3" max="9.7 1 1.7">
        一堆标准发信器，用于控制请求的库存数量
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/level_emitter.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 4 1.3" max="9.7 4.7 1.7">
        一堆标准发信器，用于控制请求的库存数量
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/level_emitter.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 1.3 1.3" max="9.7 2 1.7">
        一堆超级输入总线，每个游戏刻可传输1组物品
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/import_bus.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 3 1.3" max="9.7 3.7 1.7">
        一堆超级输出总线，每个游戏刻可传输1组物品
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/export_bus.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 2 1" max="10 3 2">
        9个独立的内部槽位
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="15" />
</GameScene>

## 特殊交互

ME接口还与其他AE2[设备](../ae2-mechanics/devices.md)有一些特殊功能：

在未配置的ME接口上放置<ItemLink id="storage_bus" />，会将其所在网络的全部[网络存储](../ae2-mechanics/import-export-storage.md)呈现给存储总线所在的网络，就好像ME接口的网络是一个被放置了存储总线的大箱子。在ME接口的筛选槽中设置物品库存会禁用此功能。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_storage.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

ME样板供应器与[子网络](../ae2-mechanics/subnetworks.md)上的ME接口有特殊交互：如果ME接口未配置，供应器将完全跳过ME接口，直接将物品推送到该子网络的[存储](../ae2-mechanics/import-export-storage.md)中，跳过ME接口且不会用配方批次填充它，更重要的是，直到存储中有空间才会插入下一批次。

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        ME接口（必须是扁平形式，非完整方块）
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 4">
        存储总线
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 4">
        你想要样板供应到的位置（多台机器，或一台机器的多个面）
  </BoxAnnotation>

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

## 变体

ME接口有2种不同变体：普通形式和扁平形式/[线缆子部件](../ae2-mechanics/cable-subparts.md)。这会影响其物品栏可以从哪些面访问，以及它们向哪些面提供网络连接。

*   普通ME接口允许从所有面推入、拉出和访问其物品栏，并且像大多数AE2机器一样，充当线缆向所有面提供网络连接。

*   扁平ME接口是[线缆子部件](../ae2-mechanics/cable-subparts.md)，因此可以在同一条线缆上放置多个，实现紧凑的布局。它们允许从其正面推入、拉出和访问其物品栏，但不会在其正面提供网络连接。

ME接口可以在工作台中在普通形式和扁平形式之间切换。

## 设置

ME接口上方的槽位决定了ME接口设置为存储哪些物品。当在其中放置物品或从JEI/REI中拖动物品时，会出现一个扳手图标，允许你设置数量。

使用流体容器（如桶或流体储罐）右键点击可以将该流体设置为筛选器，而不是桶或储罐物品本身。

当你将一个槽位设置为库存模式时，它还会阻止外部机器向该槽位插入其他物品。

## 升级

ME接口支持以下[升级](upgrade_cards.md)：

*   <ItemLink id="fuzzy_card" />允许接口按物品耐久度和/或忽略物品NBT进行筛选
*   <ItemLink id="crafting_card" />允许ME接口向你的[自动合成](../ae2-mechanics/autocrafting.md)系统发送合成请求以获取所需物品。它会尽可能从存储中拉取物品，然后再请求合成新物品。

## 优先级

可以通过点击界面右上角的扳手图标来设置优先级。优先级较高的ME接口会比优先级较低的更早获取物品。

## 合成配方

<Recipe id="network/blocks/interfaces_interface" />

<RecipeFor id="cable_interface" />
