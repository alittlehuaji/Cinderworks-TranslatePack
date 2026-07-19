---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 线缆
  icon: fluix_glass_cable
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:white_glass_cable
- ae2:orange_glass_cable
- ae2:magenta_glass_cable
- ae2:light_blue_glass_cable
- ae2:yellow_glass_cable
- ae2:lime_glass_cable
- ae2:pink_glass_cable
- ae2:gray_glass_cable
- ae2:light_gray_glass_cable
- ae2:cyan_glass_cable
- ae2:purple_glass_cable
- ae2:blue_glass_cable
- ae2:brown_glass_cable
- ae2:green_glass_cable
- ae2:red_glass_cable
- ae2:black_glass_cable
- ae2:fluix_glass_cable
- ae2:white_covered_cable
- ae2:orange_covered_cable
- ae2:magenta_covered_cable
- ae2:light_blue_covered_cable
- ae2:yellow_covered_cable
- ae2:lime_covered_cable
- ae2:pink_covered_cable
- ae2:gray_covered_cable
- ae2:light_gray_covered_cable
- ae2:cyan_covered_cable
- ae2:purple_covered_cable
- ae2:blue_covered_cable
- ae2:brown_covered_cable
- ae2:green_covered_cable
- ae2:red_covered_cable
- ae2:black_covered_cable
- ae2:fluix_covered_cable
- ae2:white_covered_dense_cable
- ae2:orange_covered_dense_cable
- ae2:magenta_covered_dense_cable
- ae2:light_blue_covered_dense_cable
- ae2:yellow_covered_dense_cable
- ae2:lime_covered_dense_cable
- ae2:pink_covered_dense_cable
- ae2:gray_covered_dense_cable
- ae2:light_gray_covered_dense_cable
- ae2:cyan_covered_dense_cable
- ae2:purple_covered_dense_cable
- ae2:blue_covered_dense_cable
- ae2:brown_covered_dense_cable
- ae2:green_covered_dense_cable
- ae2:red_covered_dense_cable
- ae2:black_covered_dense_cable
- ae2:fluix_covered_dense_cable
- ae2:white_smart_cable
- ae2:orange_smart_cable
- ae2:magenta_smart_cable
- ae2:light_blue_smart_cable
- ae2:yellow_smart_cable
- ae2:lime_smart_cable
- ae2:pink_smart_cable
- ae2:gray_smart_cable
- ae2:light_gray_smart_cable
- ae2:cyan_smart_cable
- ae2:purple_smart_cable
- ae2:blue_smart_cable
- ae2:brown_smart_cable
- ae2:green_smart_cable
- ae2:red_smart_cable
- ae2:black_smart_cable
- ae2:fluix_smart_cable
- ae2:white_smart_dense_cable
- ae2:orange_smart_dense_cable
- ae2:magenta_smart_dense_cable
- ae2:light_blue_smart_dense_cable
- ae2:yellow_smart_dense_cable
- ae2:lime_smart_dense_cable
- ae2:pink_smart_dense_cable
- ae2:gray_smart_dense_cable
- ae2:light_gray_smart_dense_cable
- ae2:cyan_smart_dense_cable
- ae2:purple_smart_dense_cable
- ae2:blue_smart_dense_cable
- ae2:brown_smart_dense_cable
- ae2:green_smart_dense_cable
- ae2:red_smart_dense_cable
- ae2:black_smart_dense_cable
- ae2:fluix_smart_dense_cable
---

# 线缆

<GameScene zoom="3" background="transparent">
  <ImportStructure src="../assets/assemblies/cables.snbt" />
  <IsometricCamera yaw="180" pitch="30" />
</GameScene>

虽然ME网络也可以通过相邻的ME兼容机器来建立，但线缆是在更大范围内扩展ME网络的主要方式。

不同颜色的线缆可以确保相邻的线缆不会相互连接，从而使[频道](../ae2-mechanics/channels.md)的分配更加高效。线缆的颜色也会影响连接到其上的终端的颜色，因此你不必让所有终端都是紫色的。福鲁伊克斯线缆会与所有其他颜色的线缆相连。

请注意，**频道与线缆颜色无关**

## 重要提示

**如果你是AE2新手且不熟悉频道，请尽可能使用智能线缆和致密智能线缆。
它们会显示频道在网络中的路由方式，使其行为更易于理解。**

## 另一个提示

**这些不是物品管道、流体管道或能量管道等。** 它们没有内部存储空间，样板供应器和机器不会向它们"推送"物品，它们的唯一作用是将AE2[设备](../ae2-mechanics/devices.md)连接成一个网络。

## 玻璃线缆

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/fluix_glass_cable.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

<ItemLink id="fluix_glass_cable" /> 是最简单的线缆，可传输能量和最多8个[频道](../ae2-mechanics/channels.md)。它有17种不同颜色，默认为福鲁伊克斯色，可以使用16种染料中的任意一种将其染成任何颜色。

要制作彩色线缆，将任意类型的染料放在中间，周围放8根相同类型的线缆（线缆的颜色不限，但必须是同一类型，如玻璃线缆、智能线缆等）。你也可以在世界中使用任何兼容Forge的油漆刷来给线缆上色。

你可以将任何彩色线缆与水桶合成来去除染料。

你可以用羊毛包裹线缆来制作<ItemLink id="fluix_covered_cable" />，也可以制作<ItemLink id="fluix_smart_cable" />来更好地了解[频道](../ae2-mechanics/channels.md)的使用情况。

<RecipeFor id="fluix_glass_cable" />

<RecipeFor id="blue_glass_cable" />

## 包层线缆

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_covered_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

包层线缆相比<ItemLink id="fluix_glass_cable" />在游戏机制上没有额外优势，但如果你喜欢包层外观，可以用作替代的美观选择。

其染色方式与<ItemLink id="fluix_glass_cable" />相同。四根<ItemLink id="fluix_covered_cable" />可以与红石和荧石粉合成来制作<ItemLink id="fluix_covered_dense_cable" />。

<Recipe id="network/cables/covered_fluix" />

<RecipeFor id="blue_covered_cable" />

## 致密线缆

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_covered_dense_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

更高容量的线缆，可传输32个频道，而标准线缆只能传输8个。但它不支持总线，因此你必须先从致密线缆转接到较小的线缆（如<ItemLink id="fluix_glass_cable" />或<ItemLink id="fluix_smart_cable" />），然后才能使用总线或面板。

致密线缆会略微覆盖频道的"最短路径"行为，频道会先走最短路径到达致密线缆，然后沿着致密线缆的最短路径到达控制器。

<Recipe id="network/cables/dense_covered_fluix" />

<RecipeFor id="blue_covered_dense_cable" />

## 智能线缆

<Row>
<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_smart_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>
<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_smart_dense_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>
</Row>

虽然外观上与<ItemLink id="fluix_covered_cable" />有些相似，但智能线缆具有诊断功能，可以可视化线缆上的频道使用情况。频道显示为沿黑色条纹延伸的发光彩色线条，帮助你了解网络中频道的使用方式。对于普通智能线缆，前四个频道显示为与线缆颜色匹配的线条，后四个显示为白色线条。对于致密智能线缆，每条条纹代表4个频道。

在有<ItemLink id="controller" />的网络上，线缆上的线条显示了频道经过的确切路径。

在临时（ad-hoc）网络上，智能线缆会显示整个网络中使用的频道数量，而不是流经该特定线缆的频道数量。

其染色方式也与<ItemLink id="fluix_glass_cable" />相同。

<Recipe id="network/cables/smart_fluix" />

<Recipe id="network/cables/dense_smart_fluix" />

<RecipeFor id="blue_smart_cable" />
