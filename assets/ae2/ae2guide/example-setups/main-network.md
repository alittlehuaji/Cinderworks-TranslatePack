---
navigation:
  parent: example-setups/example-setups-index.md
  title: 示例"主网络"
  icon: controller
---

# 示例"主网络"

许多其他设置都引用了"主网络"。你可能也会问，所有这些[设备](../ae2-mechanics/devices.md)是如何组合成一个功能性系统的。这里是一个示例：

<GameScene zoom="2.5" interactive={true}>
  <ImportStructure src="../assets/assemblies/small_base_network.snbt" />

    <BoxAnnotation color="#33dd33" min="5 1 10" max="9 7 14" thickness="0.05">
        大量样板供应器和装配室的集群为合成、切石和锻造样板提供了充足的空间。
        棋盘格布局允许供应器并行利用多个装配室，同时保持紧凑。
        8个一组的布局使得频道不可能错误路由。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="13 10 12" max="14 11 14" thickness="0.05">
        你实际上不需要那么大的控制器，你在别人基地里看到的那些巨大的环形和立方体设计主要是为了好看。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="13 12 13" max="14 13 14" thickness="0.05">
        每一个好的网络都有一个能源元件，以允许更高的每游戏刻能量输入并平滑电力波动。
    </BoxAnnotation>
    
    <BoxAnnotation color="#33dd33" min="2 1 10" max="4 4 13" thickness="0.05">
        你可能想使用其他模组的能源，比如反应堆、太阳能板或发电机之类的。谐振仓还算可以，但AE2的设计初衷是在模组包中使用，并接入你基地的主发电机。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="15 1 9" max="16 3 14" thickness="0.05">
        伪装板可以用来将东西隐藏在墙壁后面。
    </BoxAnnotation>
    <BoxAnnotation color="#33dd33" min="15 3 12" max="16 10 14" thickness="0.05">
        伪装板可以用来将东西隐藏在墙壁后面。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="13 9 7" max="14 10 9" thickness="0.05">
        你的常规存储不需要那么多驱动器和元件，2-4个驱动器的4k或16k元件几乎总是足够的。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="13 9 10" max="14 11 11" thickness="0.05">
        对于大批量存储，你需要将大容量元件过滤到特定物品，并放在设置为更高优先级的单独驱动器中。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="10 9 13" max="11.7 13 14" thickness="0.05">
        基于接口的自动补给。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="6 10 12" max="9 12 15" thickness="0.05">
        充能器自动化设置的逻辑扩展到多个充能器。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="2 10 12" max="5 11 15" thickness="0.05">
        自动化处理器的另一种方式，因为压印器在1.20中可以自动弹出输出物。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="3 10 10" max="4 12 11" thickness="0.05">
        自动化处理器的另一种方式，因为压印器在1.20中可以自动弹出输出物。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="7.2 9.2 8.2" max="7.8 10 8.8" thickness="0.05">
        无线访问点放在中间是因为它的范围是球形的。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="14 1 2" max="16 5 7" thickness="0.05">
        通常你会有1-2个大型合成CPU用于大型任务，以及几个较小的CPU在大型CPU忙碌时处理次要任务。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="5 3 6" max="6 4 7" thickness="0.05">
        有时子网可能需要自己的控制器，如果有超过8个设备（比如分发到超过8个位置）。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="7.3 1 3.3" max="9.7 4 6" thickness="0.05">
        赛特斯石英农场。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="10.3 1 2.3" max="12.7 3.7 5" thickness="0.05">
        投水自动化。
    </BoxAnnotation>

  <IsometricCamera yaw="135" pitch="15" />
</GameScene>
