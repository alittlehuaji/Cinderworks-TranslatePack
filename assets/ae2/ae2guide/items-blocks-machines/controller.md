---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ME控制器
  icon: controller
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:controller
---

# ME控制器

<BlockImage id="controller" p:state="online" scale="8" />

控制器是[ME网络](../ae2-mechanics/me-network-connections.md)的路由中枢。没有它，网络就是"临时网络"，最多只能有8个使用频道的[设备](../ae2-mechanics/devices.md)。

一个[ME网络](../ae2-mechanics/me-network-connections.md)中不可能存在2个控制器。

控制器每个面提供32个[频道](../ae2-mechanics/channels.md)。

控制器每个方块需要6 AE/t才能工作。每个控制器方块可以存储8000 AE，因此较大的网络可能需要额外的能源存储。详见[能源](../ae2-mechanics/energy.md)。

多方块控制器可以以相当自由的形式搭建。

<GameScene zoom="2" background="transparent">
  <ImportStructure src="../assets/assemblies/controllers.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

但是，必须遵守以下几条规则：

1.  [ME网络](../ae2-mechanics/me-network-connections.md)上的所有控制器方块必须相互连接；否则方块将变红。
2.  控制器的尺寸必须在7x7x7以内；否则将变红。
3.  一个控制器方块最多只能在1个轴向上有2个相邻方块；如果违反此规则，该方块将禁用并变红。

<GameScene zoom="2" background="transparent">
  <ImportStructure src="../assets/assemblies/controller_rules.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

只要遵守所有规则且已供能，控制器就应该会发光并循环显示颜色。

你可以右键点击控制器来打开与<ItemLink id="network_tool" />相同的GUI界面。

## 配方

<RecipeFor id="controller" />
