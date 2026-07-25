---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: ME 吞吐量监视器
  icon: advanced_ae:throughput_monitor
categories:
  - advanced items
item_ids:
  - advanced_ae:throughput_monitor
  - advanced_ae:throughput_monitor_configurator
---

# ME 吞吐量监视器

<GameScene zoom="8" background="transparent">
<ImportStructure src="../structure/throughput_monitors.snbt"></ImportStructure>
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

吞吐量监视器是监视器的一种子类型。它提供与<ItemLink id="ae2:storage_monitor" />相同的功能，并额外配备吞吐量计。它会追踪单种物品/流体，并监测其数量变化，向玩家显示每秒的数量变化。

它*不*需要频道。

## 按键绑定

*   手持物品右键点击，或手持流体容器双击右键，将监视器设置为对应的物品/流体
*   空手右键点击，清除监视器
*   空手按住 Shift 右键点击，锁定监视器

## 吞吐量监视器配置器

<ItemImage id="advanced_ae:throughput_monitor_configurator" scale="4"></ItemImage>

吞吐量监视器配置器是一种用于更改显示数据的工具。手持它右键点击监视器，可以在以下三个选项之间循环切换：

* 每游戏刻物品数
* 每秒物品数
* 每分钟物品数

注意：切换模式后，读数可能需要一段时间才会稳定，因此不要相信初始数值！