---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 合成CPU多方块结构（存储器、并行处理单元、监控器、单元）
  icon: 1k_crafting_storage
  position: 210
categories:
- devices
item_ids:
- ae2:1k_crafting_storage
- ae2:4k_crafting_storage
- ae2:16k_crafting_storage
- ae2:64k_crafting_storage
- ae2:256k_crafting_storage
- ae2:crafting_accelerator
- ae2:crafting_monitor
- ae2:crafting_unit
---

# 合成CPU

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/crafting_cpus.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<Row>
  <BlockImage id="1k_crafting_storage" scale="4" />

  <BlockImage id="crafting_accelerator" scale="4" />

  <BlockImage id="crafting_monitor" scale="4" />

  <BlockImage id="crafting_unit" scale="4" />
</Row>

合成CPU管理合成请求/任务。它们在执行多步骤合成任务时存储中间材料，并影响任务的规模大小以及完成速度。详见[自动合成](../ae2-mechanics/autocrafting.md)。

每个合成CPU同时处理1个请求或任务，因此如果你同时请求一个计算处理器和256个平滑石头，就需要2个CPU多方块结构。

它们可以设置为处理来自玩家的请求、自动化（输出总线和接口）的请求，或两者兼有。

右键点击可以打开合成状态界面，查看CPU当前正在处理的合成任务进度。

## 设置

*   CPU可以设置为仅接受玩家的请求、仅接受自动化（如带有<ItemLink id="crafting_card" />的<ItemLink id="export_bus" />）的请求，或两者兼有。

## 构建

合成CPU是多方块结构，必须是实心的长方体，不能有空隙。它们由多个组件构成。

每个CPU必须包含至少1个合成存储方块（最小可用的CPU实际上就是一个1k合成存储器）。

# 合成单元

<BlockImage id="crafting_unit" scale="4" />

（可选）合成单元仅用于在CPU中填充空间，以使其成为实心的长方体，当其他组件不够时使用。它也是其他组件的基础材料。

<RecipeFor id="crafting_unit" />

# 合成存储器

<Row>
  <BlockImage id="1k_crafting_storage" scale="4" />

  <BlockImage id="4k_crafting_storage" scale="4" />

  <BlockImage id="16k_crafting_storage" scale="4" />

  <BlockImage id="64k_crafting_storage" scale="4" />

  <BlockImage id="256k_crafting_storage" scale="4" />
</Row>

（必需）合成存储器有所有标准存储容量规格（1k、4k、16k、64k、256k）。它们存储合成中涉及的材料和中间材料，因此要处理涉及更多材料的合成任务，CPU需要更大容量或更多的存储器。

<Column>
  <Row>
    <RecipeFor id="1k_crafting_storage" />

    <RecipeFor id="4k_crafting_storage" />

    <RecipeFor id="16k_crafting_storage" />
  </Row>

  <Row>
    <RecipeFor id="64k_crafting_storage" />

    <RecipeFor id="256k_crafting_storage" />
  </Row>
</Column>

# 并行处理单元

<BlockImage id="crafting_accelerator" scale="4" />

（可选）并行处理单元通过加快CPU的tick频率，使系统更频繁地从<ItemLink id="pattern_provider" />发出材料批次。这使其能够跟上处理速度快的机器。例如，一个被<ItemLink id="molecular_assembler" />包围的样板供应器能够比单个装配室更快地推送材料，从而将材料批次分配到周围的多个装配室中。

一些复杂配方有多个可以并行执行的步骤，例如同时制作木板和书本来制作书架。在合成状态界面（右键点击CPU或使用[终端](terminals.md)中的锤子图标查看）中，这些步骤都会显示为"已排程"。每增加一个并行处理单元就允许多一个这样的步骤并行执行（从而显示为"合成中"）。不过这一点不太重要，因为通常你拥有的并行处理单元数量纯粹是为了插入速度，而不是为了配方中可能并行执行的步骤数。

<RecipeFor id="crafting_accelerator" />

# 合成监控器

<BlockImage id="crafting_monitor" scale="4" />

（可选）合成监控器显示CPU当前正在处理的任务。屏幕可以用<ItemLink id="color_applicator" />进行染色。

<RecipeFor id="crafting_monitor" />
