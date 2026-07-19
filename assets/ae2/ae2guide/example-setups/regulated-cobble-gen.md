---
navigation:
  parent: example-setups/example-setups-index.md
  title: 自动调控圆石生成器
  icon: minecraft:cobblestone
---

# 自动调控圆石生成器

圆石生成器的自动化很简单，只需将<ItemLink id="annihilation_plane" />对准一个标准的原版手动圆石生成器即可。但这样做最终会用圆石填满你的网络，因此需要进行一些调控。

由于破坏面板的工作方式（它们的行为类似于<ItemLink id="import_bus" />），我们不能简单地将<ItemLink id="level_emitter" />对着一个带有<ItemLink id="redstone_card" />的<ItemLink id="export_bus" />（因为无法在没有存储的情况下直接从输入到输出）。我们需要更迂回一些。

<ItemLink id="toggle_bus" />允许你用红石信号连接和断开网络的某些部分，但每次切换时都会导致网络重启。有一个简单的解决方法：将开关总线放在[子网](../ae2-mechanics/subnetworks.md)上，这样它只会重启子网。

我们可以让一个独立的<ItemLink id="annihilation_plane" />和<ItemLink id="storage_bus" />[子网](../ae2-mechanics/subnetworks.md)推入主网络上的<ItemLink id="interface" />。开关总线将通过<ItemLink id="quartz_fiber" />连接和断开子网，切断面板的供电。

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/regulated_cobble_gen.snbt" />

<BoxAnnotation color="#dddddd" min="3 2 2" max="7 2.3 3">
        (1) 破坏面板：无GUI可配置，但可以附魔效率和耐久以减少能耗。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 2 2" max="2.3 3 3">
        (2) 存储总线：默认配置。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.3 2.3 2" max="2.7 2.7 2.3">
        (3) 开关总线：非常重要的是，开关总线必须在子网侧，而非主网络侧。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.3 3 2.3" max="2.7 3.3 2.7">
        (4) 等级发信器：配置为圆石和所需数量，设置为"当等级低于限制时发送信号"。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 2 3" max="2 3 2">
        (5) 接口：默认配置。
  </BoxAnnotation>

<DiamondAnnotation pos="0 2.5 1.5" color="#00ff00">
        连接主网络
    </DiamondAnnotation>

<DiamondAnnotation pos="5 1.5 3.5" color="#00ff00">
        含水楼梯防止水流动并将岩浆变为黑曜石。
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 配置

* <ItemLink id="annihilation_plane" />（1）无GUI可配置，但可以附魔效率和耐久以减少能耗。
* <ItemLink id="storage_bus" />（2）为默认配置。
* <ItemLink id="toggle_bus" />（3）必须在石英纤维的子网侧，而非主网络侧，否则主网络每次切换时都会重启。
* <ItemLink id="level_emitter" />（4）配置为所需物品和数量，设置为"当等级低于限制时发送信号"。
* <ItemLink id="interface" />（5）为默认配置。

## 工作原理

1. 圆石生成器生成一些圆石。
2. <ItemLink id="annihilation_plane" />破坏圆石。
3. <ItemLink id="storage_bus" />将圆石存储在<ItemLink id="interface" />中，将其发送到主网络。
4. 当主网络中的圆石数量超过设定值时，<ItemLink id="level_emitter" />停止发送信号，关闭<ItemLink id="toggle_bus" />。
5. 这会切断子网络的供电，使破坏面板停止工作。
