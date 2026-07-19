---
navigation:
  parent: example-setups/example-setups-index.md
  title: 桶装液器
  icon: minecraft:water_bucket
---

# 桶装液器

另请参阅[桶倒液器](bucket-emptier.md)。

请注意，由于此方案使用了<ItemLink id="pattern_provider" />，它旨在集成到你的[自动合成](../ae2-mechanics/autocrafting.md)设置中。

有时候，生活并不便利——你需要装有流体的桶，而不是流体本身。有些机器可以帮你完成这个任务（如热力膨胀的流体装罐机），但并非总是有方便的模组可用。幸运的是，原版Minecraft有一种稍微不那么方便的方式——<ItemLink id="minecraft:dispenser" />。

**请注意，通常你不需要这样做，因为[样板编码终端](../items-blocks-machines/terminals.md#pattern-encoding-terminal)中的流体替代功能允许你在合成配方中直接使用流体本身，而无需使用桶。**

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/bucket_filler.snbt" />

<BoxAnnotation color="#dddddd" min="2 1 0" max="3 2 1">
        (1) 样板供应器：设置为"有红石信号时锁定合成"，带有相关的处理样板。

        <Row>
        ![水桶装液样板](../assets/diagrams/water_fill_pattern_small.png)
        ![岩浆桶装液样板](../assets/diagrams/lava_fill_pattern_small.png)
        </Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 1.1 0.1" max="3.2 1.9 0.9">
        (2) 接口：默认配置。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.1 1.1 0.8" max="3.9 1.9 1">
        (3) 存储总线 #1：默认配置。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="4.05 1.05 0.8" max="4.95 1.95 1">
        (4) 成型面板：使用反转卡将桶加入黑名单。
        <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.2 2 1.2" max="3.8 2.2 1.8">
        (5) 输入总线：使用反转卡将桶加入黑名单。
        <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2.1 2 0.1" max="2.9 2.2 0.9">
        (6) 存储总线 #2：默认配置。
  </BoxAnnotation>

<DiamondAnnotation pos="0 1.5 0.5" color="#00ff00">
        连接主网络
    </DiamondAnnotation>

  <IsometricCamera yaw="225" pitch="45" />
</GameScene>

## 配置

* <ItemLink id="pattern_provider" />（1）设置为"有红石信号时锁定合成"，带有相关的<ItemLink id="processing_pattern" />。
  
    ![水桶装液样板](../assets/diagrams/water_fill_pattern.png)
    ![岩浆桶装液样板](../assets/diagrams/lava_fill_pattern.png)

* <ItemLink id="interface" />（2）为默认配置。
* 第一个<ItemLink id="storage_bus" />（3）为默认配置。
* <ItemLink id="formation_plane" />（4）使用反转卡将桶加入黑名单。
  <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
* <ItemLink id="import_bus" />（5）使用反转卡将桶加入黑名单。
  <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
* 第二个<ItemLink id="storage_bus" />（6）为默认配置。

## 工作原理

1. <ItemLink id="pattern_provider" />将材料推入<ItemLink id="interface" />。（实际上，作为优化，它会直接通过存储总线和成型面板推送，就好像它们是供应器面的延伸一样。物品实际上不会进入接口。）
2. 通过[管道子网](pipe-subnet.md#providing-to-multiple-places)和<ItemLink id="formation_plane" />中描述的机制，桶最终进入<ItemLink id="minecraft:dispenser" />，流体则由成型面板放置。
3. <ItemLink id="minecraft:comparator" />检测到发射器中的桶，从而同时为发射器供能并锁定<ItemLink id="pattern_provider" />。
4. 发射器用桶舀起流体，此时发射器中有一个装满的桶。
5. <ItemLink id="import_bus" />从发射器中取出装满的桶，通过<ItemLink id="storage_bus" />将其存储到样板供应器中，将其送回主网络。
6. 比较器检测到发射器为空，解除对供应器的锁定。
