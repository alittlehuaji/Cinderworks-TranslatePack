---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: 能量
  icon: energy_cell
---

# 能量

你的网络需要能量才能运行。网络拥有一个能量池，[设备](../ae2-mechanics/devices.md)直接从中提取能量，而<ItemLink id="vibration_chamber" />、<ItemLink id="energy_acceptor" />（以及<ItemLink id="controller" />）则向其中注入能量。你可以用<ItemLink id="network_tool" />右键点击网络的任意位置来查看网络的能量统计数据，或者右键点击网络的控制器（如果有的话）。这种全网范围的存储和分配意味着没有能量传输速率限制，因此设备可以提取任意高量的能量，能源接收器可以以几乎无限制的速度吸收能量，唯一的限制是你的能量存储量。

## 能源接收

<Row>
  <BlockImage id="energy_acceptor" scale="4" />

  <GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/blocks/cable_energy_acceptor.snbt" />
  </GameScene>

  <BlockImage id="controller" p:state="online" scale="4" />

  <BlockImage id="vibration_chamber" p:active="true" scale="4" />
  
  <BlockImage id="crystal_resonance_generator" scale="4" />
</Row>

AE2内部不使用Forge Energy（在Forge上）或TechReborn Energy（在Fabric上），而是将其转换为自己的单位——AE。这种转换是单向的。能量可以通过<ItemLink id="energy_acceptor" />和<ItemLink id="controller" />进行转换，不过控制器的面更适合用于更多的[频道](../ae2-mechanics/channels.md)。能量也可以通过<ItemLink id="vibration_chamber" />生成，或者使用<ItemLink id="crystal_resonance_generator" />被动产生，但AE2的设计初衷是与其他拥有更好发电方式的科技模组配合使用。

这一切意味着，在规划基地的能源分配基础设施时，最好将AE2网络视为一台大型多方块机器。

Forge Energy和TechReborn Energy的转换比率为：

*   2 FE = 1 AE（Forge）
*   1 E  = 2 AE（Fabric）

## 能量存储

<Row>
  <BlockImage id="energy_cell" scale="4" p:fullness="4" />

  <BlockImage id="dense_energy_cell" scale="4" p:fullness="4" />

  <BlockImage id="creative_energy_cell" scale="4" />
</Row>

由于显而易见的原因，网络在一个游戏刻内无法接收或消耗超过其存储容量的能量。如果一个网络只能存储800 AE，当其[设备](../ae2-mechanics/devices.md)请求能量时，它们最多只能使用800 AE（假设存储已满），而能源接收器最多只能向网络注入800 AE（假设存储为空）。

这是导致异常行为的常见原因：当你用一个能源接收器、驱动器、终端和一些设备搭建了一个小型网络，然后试图将背包中满满的圆石倾倒进网络时，在一个游戏刻内同时插入这些圆石所需的能量超过了网络的存储量，因此并非所有圆石都能被插入，网络能量耗尽并重启。

**这个问题可以通过添加能源元件来解决。**

网络中的每根线缆、机器或部件都有25 AE的内置能量缓冲。

<ItemLink id="controller" />拥有少量的内部能量存储，为8,000 AE。

<ItemLink id="energy_cell" />可以存储200k AE，对于大多数使用场景来说一个就足够了，可以轻松应对正常使用中的功率波动。

<ItemLink id="dense_energy_cell" />可以存储1.6M AE，适用于你想用存储的电力运行网络，或者应对大型[空间存储](spatial-io.md)设置的巨大瞬时能量需求。

<ItemLink id="creative_energy_cell" />是一个用于测试的创造模式物品，提供无限能量。
