---
navigation:
  parent: example-setups/example-setups-index.md
  title: 熔炉自动化
  icon: minecraft:furnace
---

# 熔炉自动化

请注意，由于此方案使用了<ItemLink id="pattern_provider" />，它旨在集成到你的[自动合成](../ae2-mechanics/autocrafting.md)设置中。如果你只是想单独自动化一个熔炉，请使用漏斗、箱子等物品。

自动化<ItemLink id="minecraft:furnace" />比自动化更简单的机器（如[充能器](../example-setups/charger-automation.md)）稍微复杂一些。熔炉需要从两个不同的面输入物品，并从第三个面取出产物。待烧炼的物品必须从顶面推入，燃料必须从侧面推入，产物必须从底部取出。

这可以通过在顶部放置<ItemLink id="pattern_provider" />，在侧面放置<ItemLink id="export_bus" />来持续推入燃料，以及在底部放置<ItemLink id="import_bus" />来将产物输入网络来实现。然而，这会占用3个[频道](../ae2-mechanics/channels.md)。

以下是仅使用1个频道即可实现的方法：

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/furnace_automation.snbt" />

<BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) 样板供应器：使用赛特斯石英扳手切换为定向模式，并配置相关的处理样板。

        ![铁锭样板](../assets/diagrams/furnace_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (2) 接口：默认配置。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="1.3 2 1">
        (3) 存储总线 #1：筛选为煤炭。
        <ItemImage id="minecraft:coal" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 2 0" max="1 2.3 1">
        (4) 存储总线 #2：使用反转卡将煤炭加入黑名单。
        <Row><ItemImage id="minecraft:coal" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        连接主网络
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 配置

* <ItemLink id="pattern_provider" />（1）为默认配置，带有相关的<ItemLink id="processing_pattern" />。使用<ItemLink id="certus_quartz_wrench" />将其切换为定向模式。

  ![铁锭样板](../assets/diagrams/furnace_pattern.png)

* <ItemLink id="interface" />（2）为默认配置。
* 第一个<ItemLink id="storage_bus" />（3）筛选为煤炭，或你想使用的任何燃料。
* 第二个<ItemLink id="storage_bus" />（4）使用<ItemLink id="inverter_card" />将你使用的燃料加入黑名单。

## 工作原理

1. <ItemLink id="pattern_provider" />将材料推入<ItemLink id="interface" />。（实际上，作为优化，它会直接通过存储总线推送，就好像它们是供应器面的延伸一样。物品实际上不会进入接口。）
2. 接口被设置为不存储任何物品，因此它会尝试将材料推入[网络存储](../ae2-mechanics/import-export-storage.md)。
3. 绿色子网上唯一的存储是<ItemLink id="storage_bus" />。筛选为煤炭的总线通过侧面将煤炭放入熔炉的燃料槽。筛选为非煤炭的总线将待烧炼物品放入顶部槽位。
4. 熔炉执行烧炼操作。
5. 漏斗从熔炉底部取出产物，并将其放入供应器的返回槽中，将其送回主网络。
