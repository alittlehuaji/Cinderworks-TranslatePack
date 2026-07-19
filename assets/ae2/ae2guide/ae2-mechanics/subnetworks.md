---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: 子网络
---

# 子网络

<GameScene zoom="4" interactive={true}>
<ImportStructure src="../assets/assemblies/subnet_demonstration.snbt" />

<DiamondAnnotation pos="6.5 2.5 0.5" color="#00ff00">
        物品管道子网络
    </DiamondAnnotation>

<DiamondAnnotation pos="5.5 2.5 0.5" color="#00ff00">
        流体管道子网络
    </DiamondAnnotation>

<DiamondAnnotation pos="4.5 2.5 0.5" color="#00ff00">
        带有过滤的破坏面板
    </DiamondAnnotation>

<DiamondAnnotation pos="3.5 2.5 0.5" color="#00ff00">
        成型面板子网络
    </DiamondAnnotation>

<DiamondAnnotation pos="2.5 2.5 0.5" color="#00ff00">
        利用接口-存储总线交互机制充当本地子存储的子网络，主网络可以访问
    </DiamondAnnotation>

<DiamondAnnotation pos="1.5 1.5 0.5" color="#00ff00">
        另一个物品管道子网络，用于将充能物品返回样板供应器
    </DiamondAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

"子网络"是一个定义相当宽松的术语，但可以说子网络是任何支持你的主网络或执行一些小任务的[网络](../ae2-mechanics/me-network-connections.md)。它们通常小到不需要控制器。它们的两个主要用途是：

* 限制哪些[设备](../ae2-mechanics/devices.md)可以访问哪些存储（你不会希望"管道"子网络上的输入总线能访问你的主网络存储，否则它会将物品放入你的存储元件中，而不是放入目标容器中）。
* 节省主网络上的频道，例如让一个样板供应器输出到一个接口，该接口连接到多台机器上的多个存储总线，只使用1个频道，而不是在每台机器上各放一个样板供应器，占用多个频道。

创建子网络时非常重要的一点是要注意[网络连接](../ae2-mechanics/me-network-connections.md)。通常，人们把一堆接口、总线之类的东西拼凑在一起，期望它成为一个子网络，而实际上所有设备仍然通过各种完整方块设备连接到主网络。

不同颜色的线缆与创建子网络无关，它们只是不会互相连接而已。

一些例子包括：

* 用整个AE2网络替代你的垃圾桶/虚空升级，智能地决定如何最好地利用你的废品。根据可用性和需求，将物品智能路由到堆肥器阵列或某些模组的回收机。
* 构建抽象层。从你的子网络管理复杂合成操作的所有细节，这样从主网络的角度来看，整个工厂"看起来像"一台机器。
* 并行化。用10台相同的慢速机器替代一台慢速机器。从主网络的角度来看，什么都没有改变，你甚至没有使用更多的频道。
* 一个输入总线和存储总线的组合，用于将物品或流体从一个容器转移到另一个容器，就像物品管道或流体管道一样。
* 一个破坏面板和存储总线的组合，这样破坏面板只能将破坏的物品放入存储总线，从而允许你过滤面板。
* 一个接口和成型面板的组合，这样任何插入接口的物品都会被推送到成型面板，并在世界中放置或掉落。
* 一个自动制造赛特斯石英的装置，由主网络上的<ItemLink id="level_emitter" />调节和控制。
* 一个专门的存储系统，通过存储总线与接口的特殊交互从主网络访问，用于存储农场的产出，而不会无休止地溢出你的主存储。
* 等等

<ItemLink id="quartz_fiber" />对于创建子网络非常有用。它可以在网络之间传输能量而不连接它们，允许你为子网络供电，而不需要到处放置能源接收器和能源线缆。
