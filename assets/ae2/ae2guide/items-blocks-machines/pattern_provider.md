---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 样板供应器
  icon: pattern_provider
  position: 210
categories:
- devices
item_ids:
- ae2:pattern_provider
- ae2:cable_pattern_provider
---

# 样板供应器

<Row gap="20">
<BlockImage id="pattern_provider" scale="8" />
<BlockImage id="pattern_provider" p:push_direction="up" scale="8" />
<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/cable_pattern_provider.snbt" />
</GameScene>
</Row>

样板供应器是[自动合成](../ae2-mechanics/autocrafting.md)系统与外界交互的主要方式。它会将[样板](patterns.md)中的材料推送到相邻的容器中，也可以接受物品输入并将其送入网络。通常，将机器的输出直接导回附近的样板供应器（通常是推送材料的那个），而非使用<ItemLink id="import_bus" />从机器中拉取输出，可以节省一个频道。

值得注意的是，由于样板供应器是直接从合成CPU中的[合成存储器](crafting_cpu_multiblock.md#crafting-storage)推送材料的，它本身实际上不持有这些材料，因此你无法从它内部抽取物品。你需要让供应器将材料推送到另一个容器（比如木桶），然后从那个容器抽取。

同样值得注意的是，供应器必须一次性推送所有材料，无法分批推送。这一点可以加以利用。

样板供应器与[子网络](../ae2-mechanics/subnetworks.md)上的接口有特殊的交互：如果接口未经修改（请求槽为空），供应器会完全跳过接口，直接将材料推送到该子网络的[存储](../ae2-mechanics/import-export-storage.md)中，既不会用配方批次填满接口，更重要的是，在机器有空间之前不会推送下一批材料。这在阻挡模式下也能正确工作——供应器会监控机器中的槽位，而非接口中的槽位。

例如，这个装置会将待熔炼的物品和燃料都直接推送到熔炉对应的槽位中。你可以用这种方式向机器的多个面供应材料，或同时向多个机器供应。

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/furnace_automation.snbt" />

<BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) 样板供应器：使用赛特斯石英扳手切换为定向模式，并配置相应的处理样板。

        ![Iron Pattern](../assets/diagrams/furnace_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (2) 接口：使用默认配置。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="1.3 2 1">
        (3) 存储总线 #1：筛选煤炭。
        <ItemImage id="minecraft:coal" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 2 0" max="1 2.3 1">
        (4) 存储总线 #2：使用反相卡筛选黑名单煤炭。
        <Row><ItemImage id="minecraft:coal" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        连接到主网络
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

这是一个向多个机器供应材料的通用示意图

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        接口（必须是平面型，非完整方块型）
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 4">
        存储总线
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 4">
        你想要样板供应到的位置
  </BoxAnnotation>

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

支持多个样板供应器配置相同的样板，它们会并行工作。

样板供应器会尝试将批次轮流分配到所有面上，从而并行使用所有连接的机器。

## 变体

样板供应器有3种不同的变体：普通型、定向型和平板型/[线缆子部件](../ae2-mechanics/cable-subparts.md)。这影响了它们向哪些面推送材料、从哪些面接收物品，以及向哪些面提供网络连接。

* 普通样板供应器会向所有面推送材料，从所有面接收输入，并且像大多数AE2机器一样，作为线缆向所有面提供[网络连接](../ae2-mechanics/me-network-connections.md)。

* 定向样板供应器是通过使用<ItemLink id="certus_quartz_wrench" />改变普通样板供应器的方向来制作的。它们只向选定的面推送材料，从所有面接收输入，并且特别的是不会在选定的面上提供[网络连接](../ae2-mechanics/me-network-connections.md)。这允许它们在不连接网络的情况下向AE2机器推送材料，如果你想建立子网络的话。

* 平板样板供应器是[线缆子部件](../ae2-mechanics/cable-subparts.md)，因此可以在同一线缆上放置多个，实现紧凑的布局。它们的作用类似于定向样板供应器的选定面，提供样板、接收输入，并且**不**在其面上提供[网络连接](../ae2-mechanics/me-network-connections.md)。

样板供应器可以在工作台中在普通型和平板型之间转换。

## 设置

样板供应器有多种模式：

*   **阻挡模式**：当机器中已有材料时，阻止供应器推送新一批材料。
*   **锁定合成**：可以在各种红石条件下锁定供应器，或在上一批合成结果被送入该样板供应器之前保持锁定。
*   可以在<ItemLink id="pattern_access_terminal" />上显示或隐藏供应器。

## 优先级

可以通过点击界面右上角的扳手来设置优先级。当多个[样板](patterns.md)可以制作同一种物品时，优先级较高的样板供应器中的样板会被优先使用，除非网络中没有足够的材料来执行高优先级的样板。

## 常见误解

不知为何总有人这样做，我实在不理解，但还是写在这里希望能帮到大家。（也许是因为人们误以为<ItemLink id="export_bus" />是物品离开网络的唯一方式，不知道样板供应器也能导出物品）

这样做不会达到你想要的效果。正如[线缆](cables.md)中所述，线缆不是物品管道，它们没有内部存储空间，供应器不会向线缆推送物品。

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/assemblies/provider_misconception_1.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 3" max="2 1 4">
        这不是高炉
  </BoxAnnotation>

  <IsometricCamera yaw="95" pitch="5" />
</GameScene>

由于供应器没有可以推送的目标，它无法正常工作。它在这里只是充当线缆，将<ItemLink id="export_bus" />连接到网络上。

供应器也不会以任何方式告诉<ItemLink id="export_bus" />要导出什么，输出总线只会导出你在其筛选器中设置的物品。

我们在这里本质上做的是这样的：

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/assemblies/provider_misconception_2.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 3" max="2 1 4">
        这不是高炉
  </BoxAnnotation>

  <IsometricCamera yaw="95" pitch="5" />
</GameScene>

你真正想要的可能是这样，让样板供应器将其样板中的材料导出到相邻的机器中：

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/assemblies/provider_misconception_3.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 3" max="2 1 4">
        这不是高炉
  </BoxAnnotation>

  <IsometricCamera yaw="95" pitch="5" />
</GameScene>

## 与分子装配室配合使用

<ItemLink id="molecular_assembler" />基本上就像其他机器一样。它有一个可以输入物品的容器，然后对容器中的物品执行操作，然后像许多机器一样，将结果推送到相邻的容器中。因此，它们应该像其他机器一样与样板供应器配合使用，但有一点额外说明：

装配室可以直接从插入其中的<ItemLink id="crafting_pattern" />、<ItemLink id="smithing_table_pattern" />或<ItemLink id="stonecutting_pattern" />中获取所需的样板。这在流水线中很有用，但每个合成配方都需要一个专门的装配室会很麻烦。

因此，样板供应器与装配室有特殊的功能——它可以将样板数据与材料一起发送。这样，你只需将装配室放在样板供应器旁边，供应器就可以使用该装配室来执行所有的合成、锻造和切石样板。

就是这么简单，只需将样板放在供应器中：

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/assembler_tower.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

*注意这里正好有8个供应器，这是通过单个装配室、供应器或非致密线缆所能路由的最大频道数。*

## 合成配方

<RecipeFor id="pattern_provider" />

<RecipeFor id="cable_pattern_provider" />
