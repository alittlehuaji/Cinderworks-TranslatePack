---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: 自动合成
  icon: pattern_provider
---

# 自动合成

### 核心功能

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/autocraft_setup_greebles.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

自动合成是AE2的核心功能之一。你不再需要手动合成每种子材料的正确数量，像*平民*一样辛苦劳作，你可以让你的ME系统替你完成这些工作。或者自动合成物品并导出到某个地方，又或者通过巧妙的涌现行为自动维持特定数量的物品库存。它同样适用于流体，如果你安装了某些扩展模组以支持额外的模组材料类型（如Mekanism的气体），那些材料也可以处理。这非常棒。

这是一个相当复杂的话题，所以坐稳了，让我们开始吧。

一个自动合成设置由3个部分组成：
- 发送合成请求的来源
- 合成CPU
- <ItemLink id="pattern_provider" />。

以下是具体流程：

1.  某个来源创建一个合成请求。这可以是你在终端中点击某个可自动合成的物品，也可以是一个带有合成卡的输出总线或接口请求导出/存储某个物品。

*   （**重要提示：**使用你绑定的"选取方块"按键（通常是鼠标中键）来请求合成你已经拥有的物品，这可能与物品栏排序模组冲突），

2.  ME系统计算完成请求所需的材料和前置合成步骤，并将它们存储在选定的合成CPU中。

3.  拥有相关[样板](../items-blocks-machines/patterns.md)的<ItemLink id="pattern_provider" />将样板中指定的材料推送到相邻的容器中。
    对于工作台配方（"合成样板"），这将是一个<ItemLink id="molecular_assembler" />。
    对于非工作台配方（"处理样板"），这将是其他方块或机器或精心设计的红石控制装置。

4.  合成的结果会以某种方式返回到系统中，无论是通过输入总线、接口，还是将结果推回样板供应器。
    **请注意，必须发生一个"物品进入系统"事件，你不能只是将结果管道连接到一个带有<ItemLink id="storage_bus" />的箱子上。**

5.  如果该合成是请求中另一个合成的前置条件，物品会被存储在该合成CPU中，然后用于该合成。

## 递归配方

<ItemImage id="minecraft:netherite_upgrade_smithing_template" scale="4" />

自动合成算法*无法*处理的一件事是递归配方。例如，复制配方如"1个红石粉 = 2个红石粉"（将红石扔进植物魔法的魔力池中）。另一个例子是原版Minecraft中的锻造模板。不过，[有一种方法可以处理这些配方。](../example-setups/recursive-crafting-setup.md)

# 样板

<ItemImage id="crafting_pattern" scale="4" />

样板是在<ItemLink id="pattern_encoding_terminal" />中用空白样板制作的。

有几种不同类型的样板用于不同用途：

*   <ItemLink id="crafting_pattern" />编码了工作台制作的配方。它们可以直接放入<ItemLink id="molecular_assembler" />中，使其在获得材料时自动合成结果，但它们的主要用途是放在分子装配室旁边的<ItemLink id="pattern_provider" />中。
    样板供应器在这种情况下有特殊行为，会将相关样板连同材料一起发送给相邻的装配室。
    由于装配室会自动将合成结果弹射到相邻容器中，因此在样板供应器上放置一个装配室就足以自动化合成样板。

***

*   <ItemLink id="smithing_table_pattern" />与合成样板非常相似，但它们编码的是锻造台配方。它们同样通过样板供应器和分子装配室来自动化，功能完全相同。事实上，合成样板、锻造台样板和切石机样板可以在同一设置中使用。

***

*   <ItemLink id="stonecutting_pattern" />与合成样板非常相似，但它们编码的是切石机配方。它们同样通过样板供应器和分子装配室来自动化，功能完全相同。事实上，合成样板、锻造台样板和切石机样板可以在同一设置中使用。

***

*   <ItemLink id="processing_pattern" />是自动合成灵活性的主要来源。它们是最通用的类型，简单地说就是"如果样板供应器将这些材料推送到相邻容器，ME系统将在不久或遥远的将来收到这些物品"。它们是你使用几乎所有模组机器（或熔炉等）进行自动合成的方式。因为它们的使用场景非常通用，不关心推送材料和接收结果之间发生了什么，所以你可以做一些非常酷的事情，比如将材料输入到一个复杂的工厂生产链中，该生产链会分拣物品、从无限产出的农场获取其他材料、打印整个《蜜蜂电影》的剧本——ME系统完全不在乎，只要它能得到样板指定的结果就行。事实上，它甚至不在乎材料是否与结果有任何关系。你可以告诉它"1个樱花木板 = 1个下界之星"，然后让你的凋灵农场在收到樱花木板时击杀一只凋灵，它也会正常工作。

支持多个带有相同样板的<ItemLink id="pattern_provider" />并行工作。此外，你可以让一个样板指定，例如，8个圆石 = 8个石头而不是1个圆石 = 1个石头，样板供应器每次操作会向你的熔炼装置中放入8个圆石，而不是一次一个。

## "样板"的最通用形式

实际上，有一种比处理样板更"通用"的"样板"形式。一个带有合成卡的<ItemLink id="level_emitter" />可以被设置为发出红石信号来触发合成某物。这种"样板"不定义，甚至不关心材料。它只是说"如果你从这个标准发信器发出红石信号，ME系统将在不久或遥远的将来收到这个物品"。这通常用于激活和停用不需要输入材料的无限农场，或者激活一个处理递归配方的系统（标准自动合成无法理解的配方），例如"1个圆石 = 2个圆石"（如果你有一个复制圆石的机器）。

# 合成CPU

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/crafting_cpus.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

合成CPU管理合成请求/任务。它们在执行多步骤合成任务时存储中间材料，并影响任务的大小以及完成速度。它们是多方块结构，必须是长方体，且至少包含1个合成存储器。

合成CPU由以下部分组成：

*   （必需）[合成存储器](../items-blocks-machines/crafting_cpu_multiblock.md)，提供所有标准元件容量（1k、4k、16k、64k、256k）。它们存储合成中涉及的材料和中间材料，因此需要更大或更多的存储器才能让CPU处理更多材料的合成任务。

*   （可选）<ItemLink id="crafting_accelerator" />，它们使系统更频繁地从样板供应器发送材料批次。这使得，比如说，一个被6个分子装配室包围的样板供应器可以同时向所有6个装配室发送材料（从而使用所有6个），而不是一次只用一个。

*   （可选）<ItemLink id="crafting_monitor" />，它们显示CPU当前正在处理的任务。可以通过<ItemLink id="color_applicator" />染色。

*   （可选）<ItemLink id="crafting_unit" />，它们只是填充空间以使CPU成为长方体。

每个合成CPU处理1个请求或任务，所以如果你想同时请求一个运算处理器和256个平滑石头，你需要2个CPU多方块结构。

它们可以设置为处理来自玩家的请求、自动化请求（输出总线和接口），或两者兼有。

# 样板供应器

<Row>
<BlockImage id="pattern_provider" scale="4" />

<BlockImage id="pattern_provider" p:push_direction="up" scale="4" />

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/blocks/cable_pattern_provider.snbt" />
</GameScene>
</Row>

<ItemLink id="pattern_provider" />是你的自动合成系统与外界交互的主要方式。它们将[样板](../items-blocks-machines/patterns.md)中的材料推送到相邻的容器中，物品也可以被输入到样板供应器中以进入网络。通常，通过将机器的输出管道连接回附近的样板供应器（通常是推送材料的那个），而不是使用<ItemLink id="import_bus" />将机器的输出拉入网络，可以节省一个频道。

需要注意的是，由于它们直接从合成CPU中的[合成存储器](../items-blocks-machines/crafting_cpu_multiblock.md#crafting-storage)推送材料，它们的容器中实际上从不包含材料，因此你无法从它们中管道输出。你必须让供应器将材料推送到另一个容器（如木桶），然后从那里管道输出。

同样需要注意的是，供应器必须一次性推送所有材料，不能推送半批。这可以被巧妙利用。

样板供应器与[子网络](../ae2-mechanics/subnetworks.md)上的接口有特殊交互：如果接口未被修改（请求槽为空），供应器将完全跳过该接口，直接推送到该子网络的[存储](../ae2-mechanics/import-export-storage.md)中，跳过接口且不会用配方批次填满它，更重要的是，在存储空间有空位之前不会插入下一批。

支持多个带有相同样板的样板供应器并行工作。

样板供应器会尝试将批次轮询分配到所有面，从而并行使用所有连接的机器。

## 变体

样板供应器有3种不同变体：普通型、定向型和平面型。这影响了它们向哪些特定面推送材料、从哪些面接收物品以及向哪些面提供网络连接。

*   普通型样板供应器向所有面推送材料，从所有面接收输入，并且像大多数AE2机器一样，像线缆一样向所有面提供网络连接。

*   定向型样板供应器是通过使用<ItemLink id="certus_quartz_wrench" />在普通样板供应器上来改变方向而制作的。它们只向选定的面推送材料，从所有面接收输入，并且特别地不在选定的面提供网络连接。这使得它们可以在不连接网络的情况下向AE2机器推送材料，如果你想创建子网络的话。

*   平面型样板供应器是[线缆子部件](../ae2-mechanics/cable-subparts.md)，因此可以在同一条线缆上放置多个，允许紧凑的设置。它们的行为类似于定向型样板供应器的选定面，提供样板、接收输入，并且不在其面板面提供网络连接。

样板供应器可以在工作台中在普通型和平面型之间切换。

## 设置

样板供应器有多种模式：

*   **阻挡模式**在机器中已有材料时阻止供应器推送新一批材料。

*   **锁定合成**可以在各种红石条件下锁定供应器，或者直到上一次合成的结果被插入到该特定样板供应器中。

*   供应器可以在<ItemLink id="pattern_access_terminal" />上显示或隐藏。

## 优先级

可以通过点击GUI右上角的扳手来设置优先级。在多个[样板](../items-blocks-machines/patterns.md)对应同一物品的情况下，优先级较高的供应器中的样板将优先于优先级较低的供应器中的样板被使用，除非网络中没有较高优先级样板所需的材料。

# 分子装配室

<BlockImage id="molecular_assembler" scale="4" />

<ItemLink id="molecular_assembler" />接收输入的物品，并执行相邻<ItemLink id="pattern_provider" />定义的操作，或执行插入的<ItemLink id="crafting_pattern" />、<ItemLink id="smithing_table_pattern" />或<ItemLink id="stonecutting_pattern" />定义的操作，然后将结果推送到相邻的容器中。

它们的主要用途是放在<ItemLink id="pattern_provider" />旁边。样板供应器在这种情况下有特殊行为，会将相关样板的信息连同材料一起发送给相邻的装配室。由于装配室会自动将合成结果弹射到相邻容器中（从而进入样板供应器的返回槽），因此在样板供应器上放置一个装配室就足以自动化合成样板。

<GameScene zoom="4" background="transparent">
<ImportStructure src="../assets/assemblies/assembler_tower.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>
