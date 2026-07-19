---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 监控器
  icon: storage_monitor
  position: 210
categories:
- devices
item_ids:
- ae2:storage_monitor
- ae2:conversion_monitor
---

# 监控器

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/assemblies/monitors.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

监控器可以显示并交互单种物品或流体，无需打开GUI。

监控器会继承其所安装的[线缆](cables.md)的颜色。

如果监控器安装在地板或天花板上，你可以使用<ItemLink id="certus_quartz_wrench" />来旋转它。

它们是[线缆子部件](../ae2-mechanics/cable-subparts.md)。

# 存储监控器

会显示一种物品或流体及其数量。可以把它们放在你的农场旁边之类的……

*不*需要[频道](../ae2-mechanics/channels.md)。

按键操作：

*   手持物品右键点击，或手持流体容器双击右键，可以将监控器设置为该物品/流体。
*   空手右键点击可以清除监控器的设置。
*   空手Shift+右键点击可以锁定监控器。

## 合成表

<RecipeFor id="storage_monitor" />

# 转换监控器

转换监控器类似于存储监控器，但允许你存入或取出其设置的物品。

如果设置的物品可以[自动合成](../ae2-mechanics/autocrafting.md)且存储中没有该物品，尝试取出物品时会打开一个UI来指定要合成的数量。

*需要*[频道](../ae2-mechanics/channels.md)。

额外按键操作：

*   左键点击可以取出一组设置的物品，如果存储中没有该物品则会请求合成。
*   手持任意物品右键点击可以存入该物品。
*   空手右键点击可以将背包中所有设置的物品存入。

## 合成表

<RecipeFor id="conversion_monitor" />
