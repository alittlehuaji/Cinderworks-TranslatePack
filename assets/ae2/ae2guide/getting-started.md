---
navigation:
  title: 入门指南 (1.20+)
  position: 10
---

<div class="notification is-info">
  以下信息仅适用于 Minecraft 1.20 及更高版本中的应用能源2。
</div>

# 入门指南

## 获取初始材料

<GameScene zoom="4" background="transparent">
  <ImportStructure src="assets/assemblies/meteor_interior.snbt" />
</GameScene>

要开始使用应用能源2，首先需要找到一座[陨石](ae2-mechanics/meteorites.md)。它们相当常见，往往会在地形上留下巨大的坑洞，所以你在旅途中可能已经遇到过。
如果你没有遇到过，可以制作一个<ItemLink id="meteorite_compass" />，它会指向最近的<ItemLink id="mysterious_cube" />。

找到陨石后，挖入其中心。你会发现赛特斯石英簇、赛特斯石英芽、各种类型的[赛特斯石英母岩](items-blocks-machines/budding_certus.md)，以及中心的一个神秘方块。

开采你找到的赛特斯石英簇和所有赛特斯石英方块。你也可以拾取赛特斯石英母岩，但没有精准采集的话它们会降一级。

不要破坏任何无瑕的赛特斯石英母岩，因为即使有精准采集，它们也会降级为有瑕的赛特斯石英母岩，而且无法修复回无瑕状态。

同时开采陨石中心的神秘方块，以获取全部4种压印模板。

## 培育赛特斯石英

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_certus_1.snbt" />
</GameScene>

赛特斯石英芽会从[赛特斯石英母岩](items-blocks-machines/budding_certus.md)上生长出来，类似于紫水晶。如果你在石英芽未完全长成时破坏它，会掉落一个<ItemLink id="certus_quartz_dust" />，且时运附魔不影响掉落量。如果你破坏一个完全长成的石英簇，会掉落四个<ItemLink id="certus_quartz_crystal" />，时运附魔会增加这个数量。

赛特斯石英母岩有4个等级：无瑕、有瑕、开裂和损坏。

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_blocks.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

每次石英芽生长一个阶段，母岩都有一定几率降一级，最终变成普通的赛特斯石英方块。它们可以通过将母岩（或赛特斯石英方块）与一个或多个<ItemLink id="charged_certus_quartz_crystal" />一起丢入水中来修复（也可以创建新的母岩）。

<RecipeFor id="damaged_budding_quartz" />

无瑕的赛特斯石英母岩不会降级，可以无限生成赛特斯石英。但它们无法被合成，也无法用镐移动，即使有精准采集也不行。（不过它们*可以*通过[空间存储](ae2-mechanics/spatial-io.md)来移动）

赛特斯石英芽本身生长非常缓慢。幸运的是，<ItemLink id="growth_accelerator" />放置在母岩旁边时可以大幅加速这个过程。你应该优先建造几个催生器。

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_certus_2.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

如果你没有足够的石英来制作<ItemLink id="energy_acceptor" />或<ItemLink id="vibration_chamber" />，可以制作一个<ItemLink id="crank" />并安装在催生器的末端。

自动收获赛特斯石英的方法[在此处有说明](example-setups/simple-certus-farm.md)。

## 关于福鲁伊克斯的简要介绍

你需要的另一种材料是福鲁伊克斯，你在制作催生器时已经接触过它了。它是通过将充能赛特斯石英、红石和下界石英丢入水中制成的。自动化这个过程"留给读者作为练习"。

制作<ItemLink id="charged_certus_quartz_crystal" />需要<ItemLink id="charger" />，如果你还没有制作的话。

## 压印处理器

在你搜刮陨石时，通过破坏神秘方块你已经获得了四种"压印模板"。它们用于<ItemLink id="inscriber" />中制作三种处理器。

<ItemGrid>
  <ItemIcon id="silicon_press" />

  <ItemIcon id="logic_processor_press" />

  <ItemIcon id="calculation_processor_press" />

  <ItemIcon id="engineering_processor_press" />
</ItemGrid>

压印器是一台有方向的机器，就像原版熔炉一样。从顶部或底部放入物品会进入顶部或底部槽位，从侧面或背面放入则进入中间槽位。产物可以从侧面或背面取出。

为了方便使用漏斗自动化（并可能减少管道混乱），压印器可以用<ItemLink id="certus_quartz_wrench" />旋转。

准备下一步制作一个非常基础的ME系统，先生产每种处理器各几个。处理器生产的自动化"[留给读者作为练习](example-setups/processor-automation.md)"。

## 物质能源技术：ME网络与存储

### 什么是ME存储？

它的读音是 M-E，代表物质能源（Matter Energy）。

物质能源是应用能源2的核心组件，它就像一个疯狂科学家版本的多方块箱子，可以彻底革新你的存储方式。ME与其他Minecraft存储系统截然不同，你可能需要一些跳出常规的思维来适应它；但一旦上手，你就会发现在极小空间内实现海量存储、多个访问终端等只是冰山一角。

### 入门需要了解什么？

首先，ME将物品存储在其他物品内部，这些物品称为[存储元件](items-blocks-machines/storage_cells.md)；共有5个等级，存储容量逐级递增。要使用存储元件，必须将其放入<ItemLink id="chest" />或<ItemLink id="drive" />中。

<ItemLink id="chest" />在放入元件后会立即显示其内容，你可以像使用<ItemLink id="minecraft:chest" />一样从中取出和放入物品，不同之处在于物品实际上是存储在存储元件中，而非<ItemLink id="chest" />本身。

<ItemLink id="chest" />的用途相当有限。要真正利用AE2，你需要建立一个[ME网络](ae2-mechanics/me-network-connections.md)。

## 你的第一个ME系统

现在你已经拥有了应用能源2的所有基础材料和机器，可以制作你的第一个ME（物质能源）系统了。这将是一个非常基础的系统——没有自动合成，没有物流，只有简洁、好用、可搜索的存储。

<GameScene zoom="6" interactive={true}>
<ImportStructure src="assets/assemblies/tiny_me_system.snbt" />

</GameScene>

*   你的材料清单：
    * 1个<ItemLink id="drive" />
    * 1个<ItemLink id="terminal" />或<ItemLink id="crafting_terminal" />
    * 1个<ItemLink id="energy_acceptor" />
    * 若干[线缆](items-blocks-machines/cables.md)，可以是玻璃线缆、包层线缆或智能线缆，但不能是致密线缆
    * 若干[存储元件](items-blocks-machines/storage_cells.md)，推荐使用4k型号以获得容量和类型的良好平衡（使用元件工作台对4k和1k进行[分区](items-blocks-machines/cell_workbench.md)会更高效，但这里暂不深入讨论）
---
1.  放置驱动器。
2.  能源接收器（以及其他几种AE2[设备](ae2-mechanics/devices.md)）有2种模式：方块模式和平面模式。可以在工作台中切换。如果你的能源接收器是方块模式，将其放在驱动器旁边。如果是平面模式，先在驱动器上放一段线缆，再将接收器放在线缆上。
3.  用你喜欢的能源模组的线缆/管道/导管将能量输入能源接收器。
4.  在驱动器顶部（或视线高度处）放一段线缆，将终端或合成终端安装在线缆上。
5.  将存储元件放入驱动器中
6.  大功告成
7.  调整终端的设置
8.  享受你的终极力量与能力
9.  意识到这个网络在整个格局中其实很小

### 扩展你的网络

你已经有了一些基础存储以及访问这些存储的方式，这是个好的开始，但你可能还想自动化一些处理过程。

一个很好的例子是在熔炉顶部放置一个<ItemLink id="export_bus" />来输入矿石，在熔炉底部放置一个<ItemLink id="import_bus" />来取出烧炼后的矿物。

<ItemLink id="export_bus" />可以将物品从网络输出到连接的容器中，而<ItemLink id="import_bus" />则将物品从连接的容器导入到网络中。

### 突破限制

此时你可能已经接近8个左右的[设备](ae2-mechanics/devices.md)了，一旦达到9个设备，你就需要开始管理[频道](ae2-mechanics/channels.md)。许多设备（但不是全部）需要频道才能运行。

默认情况下，一个网络最多支持8个频道，一旦超出这个限制，你就需要在网络中添加一个<ItemLink id="controller" />。这将大大扩展你的网络容量。
[智能线缆](items-blocks-machines/cables.md)可以让你看到频道在网络中的路由方式。在入门阶段多使用它们来了解频道的工作方式，或者如果你有大量的红石和荧石也可以多使用。
