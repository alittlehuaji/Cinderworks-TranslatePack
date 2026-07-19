---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: 频道
  icon: controller
---

# 频道

Applied Energistics 2的[ME网络](me-network-connections.md)需要频道来支持使用网络存储或其他网络服务的[设备](../ae2-mechanics/devices.md)。你可以把频道想象成连接所有设备的USB线缆。一台电脑只有有限的USB端口，只能支持有限数量的设备连接。大多数机器、整方块设备和标准线缆最多只能传输8个频道。你可以把整方块设备和标准线缆想象成一束8根"频道线"。然而，[致密线缆](../items-blocks-machines/cables.md#dense-cable)可以支持最多32个频道。唯一能够传输32个频道的其他设备是<ItemLink id="me_p2p_tunnel" />和[量子网络桥](../items-blocks-machines/quantum_bridge.md)。每当一个设备占用一个频道时，想象一下从线束中抽出一根USB"线"，这意味着这根"线"在后续线路上就不再可用了。

<GameScene zoom="7" interactive={true}>
  <ImportStructure src="../assets/assemblies/channel_demonstration_1.snbt" />

  <LineAnnotation color="#33ff33" from="1 .4 .7" to="2.4 .4 .7" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .6 .7" to="2.4 .6 .7" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .4 .6" to="2.6 .4 .6" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .6 .6" to="2.6 .6 .6" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .6 .6" to="2.6 .6 .6" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="2.4 .6 .7" to="2.4 .6 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.4 .4 .7" to="2.4 .4 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.6 .6 .6" to="2.6 .6 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.6 .4 .6" to="2.6 .4 1.5" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="2.1 .6 1.5" to="2.4 .6 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.6 .4 1.5" to="2.9 .4 1.5" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="2.6 .6 1.5" to="2.6 .9 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.4 .1 1.5" to="2.4 .4 1.5" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="1 .6 .4" to="3.5 .6 .4" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .4 .4" to="3.5 .4 .4" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="3.5 .6 .4" to="3.5 .9 .4" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="3.5 .1 .4" to="3.5 .4 .4" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="1 .6 .3" to="1.5 .6 .3" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .4 .3" to="1.5 .4 .3" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="1.5 .6 .3" to="1.5 .9 .3" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1.5 .1 .3" to="1.5 .4 .3" alwaysOnTop={true}/>

  <LineAnnotation color="#ff3333" from="3.5 .5 .5" to="5.5 .5 .5" alwaysOnTop={true}>
  线缆中所有8个频道都已被占用，因此驱动器无法获得频道。
  </LineAnnotation>

  <LineAnnotation color="#993333" from="1 .5 .5" to="1.25 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="1.5 .5 .5" to="1.75 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="2 .5 .5" to="2.25 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="2.5 .5 .5" to="2.75 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="3 .5 .5" to="3.25 .5 .5" alwaysOnTop={true}/>

  <DiamondAnnotation pos="3.6 0.5 0.5" color="#ff0000">
        线缆中所有8个频道都已被占用，因此驱动器无法获得频道。
    </DiamondAnnotation>

  <IsometricCamera yaw="15" pitch="30" />
</GameScene>

查看频道在你的网络中如何使用和路由的一个简单方法是使用[智能线缆](../items-blocks-machines/cables.md)，它们会显示频道的路径和使用情况。

频道每经过一个节点会消耗1⁄128 ae/t，这意味着在一个拥有8个设备和超过96个节点的网络中添加<ItemLink id="controller" />实际上可能会减少功耗，因为它改变了频道的分配方式。

需要注意的是，**频道与线缆颜色无关**，线缆颜色的作用仅仅是防止线缆相互连接。

## 频道路由

当使用<ItemLink id="controller" />时，频道通过3个步骤进行路由。首先，它们通过相邻的机器找到通往最近的[普通线缆](../items-blocks-machines/cables.md)（玻璃线缆、包层线缆或智能线缆）的最短路径。然后，它们通过该普通线缆找到通往最近的[致密线缆](../items-blocks-machines/cables.md)（致密线缆或致密智能线缆）的最短路径。最后，它们通过该致密线缆找到通往<ItemLink id="controller" />的最短路径。如果最短路径已经饱和，一些[设备](devices.md)可能无法获得所需的频道。利用彩色线缆、线缆锚和通道来确保你的频道沿着你想要的路径传输。

例如，在这个例子中，一些驱动器没有获得频道，因为尽管线缆有足够的容量，但频道会尝试走最短路径，导致一些线缆过载，而其他线缆则空闲。

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/channel_path_length_issue.snbt" />

  <LineAnnotation color="#33ff33" from="3 .5 1.4" to="0.4 0.5 1.4" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 .5 1.4" to="0.4 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 0.5 3.6" to="1.4 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1.4 0.5 3.6" to="1.4 0.5 5" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#33ff33" from="3 0.5 3.6" to="1.6 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1.6 0.5 3.6" to="1.6 0.5 5" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#ff3333" from="3 .5 1.6" to="0.6 .5 1.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#ff3333" from="0.6 .5 1.6" to="0.6 .5 3.4" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#ff3333" from="0.6 .5 3.4" to="1.4 .5 3.4" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#ff3333" from="3 .5 3.4" to="1.6 .5 3.4" alwaysOnTop={true} thickness="0.05"/>

  <BoxAnnotation color="#dddddd" min="1.2 0.2 3.2" max="1.8 0.8 3.8" alwaysOnTop={true} thickness="0.05">
        超过8个频道尝试经过此处路由，因此部分被截断。
  </BoxAnnotation>

  <IsometricCamera yaw="90" pitch="90" />

</GameScene>

通过更仔细地约束频道的传输路径可以解决这个问题。网络应该设计成树状（或灌木状）结构。应尽量减少环路和模糊的频道路径。

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/channel_path_length_issue_fix.snbt" />

  <LineAnnotation color="#33ff33" from="3 .5 1.4" to="0.4 0.5 1.4" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 .5 1.4" to="0.4 0.5 5.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 0.5 5.6" to="1 0.5 5.6" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#33ff33" from="3 0.5 3.6" to="1.6 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1.6 0.5 3.6" to="1.6 0.5 5" alwaysOnTop={true} thickness="0.05"/>

  <IsometricCamera yaw="90" pitch="90" />

</GameScene>

## Ad-Hoc 网络

没有<ItemLink id="controller" />的网络被认为是Ad-Hoc网络（临时网络），最多只能支持8个使用频道的设备。一旦你超过8个设备，网络中使用频道的设备将会关闭，你可以移除设备或添加一个<ItemLink id="controller" />。

与有控制器的网络不同，Ad-Hoc网络上的[智能线缆](../items-blocks-machines/cables.md)会显示整个网络中使用的频道数量，而不是流经该特定线缆的频道数量。

在使用Ad-Hoc网络时，每个设备在整个网络范围内占用1个频道，这与<ItemLink id="controller" />基于最短路径分配频道的方式截然不同。

## 设计

正如之前在[频道路由](channels.md#channel-routing)中提到的，最好将你的网络设计成树状结构，致密线缆从控制器分支出来，普通线缆从致密线缆分支出来，[设备](../ae2-mechanics/devices.md)以8个或更少为一组分布在普通线缆上。

以下是一个反面教材：

沿着频道路径分析：

1. 从控制器向右出发，由于驱动器充当普通线缆，我们被限制在8个频道。然而由于这里没有使用智能线缆，我们无法看到使用了多少个频道。剩余8个频道。
2. 驱动器占用了一个频道。剩余7个频道。
3. 2个频道向上连接到终端。剩余5个频道。
4. 继续向右，接口占用了另一个频道。剩余4个频道。
5. 1个频道向上连接到样板供应器。剩余3个频道。
6. 继续向右，1个频道向上连接到输入总线。剩余2个频道。
7. 供给装配室的样板供应器集群只获得了2个频道，因此有2个供应器无法获得频道。

归根结底，错误在于频道的瓶颈设计，以及没有充分考虑频道将如何分配。

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/bad_network_structure.snbt" />

<LineAnnotation color="#33ff33" from="6.5 .5 1.5" to="6 .5 1.5" alwaysOnTop={true} thickness="0.4">
  32个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="6 .5 1.5" to="5.5 .5 1.5" alwaysOnTop={true} thickness="0.2">
  8个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 .5 1.5" to="5.5 1.5 1.5" alwaysOnTop={true} thickness="0.1">
  2个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 .5 1.5" to="5.5 .3 1.5" alwaysOnTop={true} thickness="0.071">
  1个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 1.5 1.5" to="5.5 2.5 1.5" alwaysOnTop={true} thickness="0.071">
  1个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 2.5 1.5" to="5.5 2.5 1.1" alwaysOnTop={true} thickness="0.071">
  1个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 .5 1.5" to="4.5 .5 1.5" alwaysOnTop={true} thickness="0.158">
  5个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="4.5 .5 1.5" to="4.5 .3 1.5" alwaysOnTop={true} thickness="0.071">
  1个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="4.5 .5 1.5" to="4.5 1.5 1.5" alwaysOnTop={true} thickness="0.071">
  1个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="4.5 .5 1.5" to="3.5 .5 1.5" alwaysOnTop={true} thickness="0.122">
  3个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="3.5 .5 1.5" to="3.5 2.5 1.5" alwaysOnTop={true} thickness="0.071">
  1个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="3.5 2.5 1.5" to="3.7 2.5 1.5" alwaysOnTop={true} thickness="0.071">
  1个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="3.5 .5 1.5" to="1.5 .5 1.5" alwaysOnTop={true} thickness="0.1">
  2个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="1.5 0.5 1.5" to="1.5 0.3 1.5" alwaysOnTop={true} thickness="0.071">
  1个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="1.5 0.5 1.5" to="0.5 0.5 1.5" alwaysOnTop={true} thickness="0.071">
  1个频道
</LineAnnotation>

<LineAnnotation color="#33ff33" from="0.5 0.5 1.5" to="0.5 0.5 0.5" alwaysOnTop={true} thickness="0.071">
  1个频道
</LineAnnotation>

<LineAnnotation color="#ff3333" from="0.5 1.5 1.5" to="0.5 1.3 1.5" alwaysOnTop={true} thickness="0.071">
  无频道
</LineAnnotation>

<LineAnnotation color="#ff3333" from="1.5 1.5 0.5" to="1.5 1.3 0.5" alwaysOnTop={true} thickness="0.071">
  无频道
</LineAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

---

以下是一个良好的结构示例：

<GameScene zoom="2.5" interactive={true}>
  <ImportStructure src="../assets/assemblies/treelike_network_structure.snbt" />

    <BoxAnnotation color="#dddddd" min="6.9 0 4.9" max="9.1 4 7.1" thickness="0.05">
        注意样板供应器被分成了不同的8个一组。
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="5 4 4" max="8 5 5" thickness="0.05">
        两条充满频道的普通线缆汇聚在一起意味着你需要使用致密线缆。
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="5 0 13" max="8 1 14" thickness="0.05">
        使用不同颜色的线缆来防止相邻线缆相互连接。
    </BoxAnnotation>

  <IsometricCamera yaw="315" pitch="30" />
</GameScene>

## 频道模式

适用于Minecraft 1.18的AE2 10.0.0引入了新选项，可以改变AE2频道在你的世界中的行为方式。在通用配置部分有一个新的配置选项（`channels`）来控制此选项，同时为管理员提供了一个新的游戏内命令来在游戏内更改模式和配置。命令为 `/ae2 channelmode <mode>` 来更改模式，`/ae2 channelmode` 来显示当前模式。当在游戏内更改模式时，所有已有的网络将重新启动并立即使用新模式。

这恢复并改进了Minecraft 1.12中可用的选项，为那些只想要稍微轻松一些的游戏体验但又不想完全移除该机制的玩家提供了更好的选择。

下表列出了配置文件和命令中可用的模式。

| 设置 | 描述 |
| ---- | ---- |
| `default` | 标准模式，线缆和Ad-Hoc网络的频道容量如本指南中所述。 |
| `x2` | 所有频道容量翻倍（普通线缆16个，致密线缆64个，Ad-Hoc网络支持16个频道）。 |
| `x3` | 所有频道容量三倍（普通线缆24个，致密线缆92个，Ad-Hoc网络支持24个频道）。 |
| `x4` | 所有频道容量四倍（普通线缆32个，致密线缆128个，Ad-Hoc网络支持32个频道）。 |
| `infinite` | 移除所有频道限制。控制器仍然*显著*减少网络的功耗。智能线缆仅在完全关闭（无频道传输）和完全开启（1个或更多频道传输）之间切换。 |