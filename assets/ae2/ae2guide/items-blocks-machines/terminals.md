---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 终端
  icon: crafting_terminal
  position: 210
categories:
- devices
item_ids:
- ae2:terminal
- ae2:crafting_terminal
- ae2:pattern_encoding_terminal
- ae2:pattern_access_terminal
---

# 终端

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/terminals.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

虽然<ItemLink id="pattern_provider" />、<ItemLink id="import_bus" />、<ItemLink id="storage_bus" />等设备是AE2网络与外界交互的主要方式，但终端才是AE2网络与*你*交互的主要方式。终端有多种变体，功能各不相同。

终端会继承其所安装线缆的颜色。

它们属于[线缆子组件](../ae2-mechanics/cable-subparts.md)。

## 终端放置

由于终端通常是人们放置的第一个[子组件](../ae2-mechanics/cable-subparts.md)，因此经常会放反。以下是正确和错误放置的示例：

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/terminal_placement.snbt" />
  <IsometricCamera yaw="195" pitch="30" />

  <LineAnnotation color="#ff3333" from="2.5 .5 .5" to="4.5 2.5 .5" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#ff3333" from="2.5 2.5 .5" to="4.5 .5 .5" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#33ff33" from="-.5 2.5 .5" to="1 .5 .5" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1 .5 .5" to="1.5 1 .5" alwaysOnTop={true} thickness="0.05"/>
</GameScene>

你仍然有一个终端和一个能源接收器，只是现在终端方向正确，实际连接到了网络，而且整体占用的空间也更小。

<a name="terminal-ui"></a>

# 终端搜索

搜索框支持正则表达式，因此你可以输入如"gtceu:.*ore"来搜索所有Gregtech的矿石。正则表达式的学习就留给读者自行探索了。

# 终端

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

基础终端，允许你查看和访问[网络存储](../ae2-mechanics/import-export-storage.md)中的物品，并从[自动合成](../ae2-mechanics/autocrafting.md)系统中发起合成请求。

## 用户界面

基础终端的用户界面分为几个部分：

中间区域用于访问网络存储。你可以放入和取出物品。有以下快捷键：

*   左键点击拾取一组，右键点击拾取半组。
*   如果某个物品或流体等可以被[自动合成](../ae2-mechanics/autocrafting.md)，按下绑定到"选取方块"的按键（通常是中键）会弹出界面让你指定合成数量。你也可以输入公式如`3*64/2`，或输入`=32`来合成存储中达到32个所需的数量。
*   按住Shift键可以冻结显示的物品，防止它们在数量变化或新物品进入系统时重新排列。
*   右键点击使用桶或其他流体容器可以存放流体，左键点击终端中的流体再使用空流体容器可以取出流体。

左侧区域有设置按钮，用于：

*   按名称、模组、数量等不同属性排序
*   查看已存储的、可合成的或两者兼有
*   查看物品、流体或两者兼有
*   更改排序顺序
*   打开详细的终端设置窗口
*   更改终端界面的高度

右侧有<ItemLink id="view_cell" />的插槽。

中间区域右上角（锤子按钮）可以打开[自动合成](../ae2-mechanics/autocrafting.md)状态界面，让你查看自动合成的进度以及每个[合成CPU](crafting_cpu_multiblock.md)的工作状态。

## 合成配方

<RecipeFor id="terminal" />

<a name="crafting-terminal-ui"></a>

# 合成终端

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/crafting_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

合成终端与普通终端类似，具有所有相同的设置和区域，但增加了一个合成网格，物品会从[网络存储](../ae2-mechanics/import-export-storage.md)自动补充。Shift+点击输出时请小心！

你应该尽快将终端升级为合成终端。

## 用户界面

合成终端具有与普通终端相同的用户界面，但在中间增加了一个合成网格。

还有两个额外的按钮，用于将合成网格中的物品清空到网络存储或你的背包中。

## 合成配方

<RecipeFor id="crafting_terminal" />

<a name="pattern-encoding-terminal-ui"></a>

# 样板编码终端

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/pattern_encoding_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

样板编码终端与普通终端类似，具有所有相同的设置和区域，但增加了一个[样板](patterns.md)编码界面。外观类似于合成终端，但这个合成网格实际上不会执行合成。

你应该在合成终端之外再准备一个样板编码终端。

## 用户界面

样板编码终端具有与普通终端相同的用户界面，并增加了[样板](patterns.md)编码界面。

样板编码界面分为几个部分：

一个用于放入<ItemLink id="blank_pattern" />的插槽。

一个用于编码样板的大箭头。

一个用于已编码样板的插槽。将已编码的样板放入此插槽可以进行编辑，然后点击"编码"箭头。

右侧有4个标签页，用于切换要编码的样板类型：

*   合成
*   处理
*   锻造
*   切石

中央界面会根据样板类型而变化：

*   合成模式：
    *   左键点击或从JEI/REI拖拽材料来组成配方。右键点击移除材料。
    *   启用替代允许使用任何木板类型来合成木棍等。仅在绝对必要时使用此选项。
    *   流体替代允许使用存储的流体替代流体桶。
    *   你也可以直接从JEI/REI的配方界面编码样板。

*   处理模式：
    *   左键或右键点击或从JEI/REI拖拽材料来指定配方的输入和输出。
    *   右键点击使用流体容器（如桶或流体储罐）可以将该流体设为材料，而不是桶或储罐物品。
    *   持有物品时，左键点击放置整组，右键点击放置一个。左键点击现有材料可以移除整组，右键点击减少一个。按下绑定到"选取方块"的按键（通常是中键）可以指定物品或流体的精确数量。
    *   输出槽有一个主产物空间和副产物空间，供自动合成算法参考。
    *   输入和输出槽都可滚动，因此你可以有81种不同的材料和26种副产物。
    *   你也可以直接从JEI/REI的配方界面编码样板。

*   锻造和切石模式的界面分别类似于锻造台和切石机。

## 合成配方

<RecipeFor id="pattern_encoding_terminal" />

<a name="pattern-access-terminal-ui"></a>

# 样板管理终端

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/pattern_access_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

样板管理终端用于解决一个特定问题：在密集的<ItemLink id="pattern_provider" />和<ItemLink id="molecular_assembler" />塔中，你无法物理接触样板供应器来放入新样板。此外，也许你懒得走遍基地去放入[样板](patterns.md)。样板管理终端允许访问网络上所有的样板供应器。

## 用户界面

此终端的用户界面与其他终端不同。

它有终端高度设置和显示哪些样板供应器的设置。

终端中的每一行对应一个特定的样板供应器。

终端中的样板供应器按它们所连接的方块或你给予它们的名称（在铁砧或使用<ItemLink id="name_press" />时）排序。

## 合成配方

<RecipeFor id="pattern_access_terminal" />
