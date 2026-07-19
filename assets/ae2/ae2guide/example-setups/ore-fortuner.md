---
navigation:
  parent: example-setups/example-setups-index.md
  title: 自动时运矿石处理
  icon: minecraft:raw_iron
---

# 矿石时运自动化

<ItemLink id="annihilation_plane" />可以附魔任何镐的附魔，包括时运，因此一个明显的用例是为几个面板附魔时运，然后用<ItemLink id="formation_plane" />和<ItemLink id="annihilation_plane" />快速放置和破坏矿石。

请注意，由于<ItemLink id="import_bus" />需要"加速启动"，该方案在开始时会比较慢，几秒后才会达到满速。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/ore_fortuner.snbt" />

  <BoxAnnotation color="#dddddd" min="2.7 0 2" max="3 1 3">
        (1) 输入总线：装有几张加速卡。
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 0 2" max="2 1 2.3">
        (2) 成型面板：默认配置。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 0 0.7" max="2 1 1">
        (3) 破坏面板：无GUI可配置，但附魔了时运。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 0 0" max="3 1 1">
        (4) 存储总线：默认配置。
  </BoxAnnotation>

<DiamondAnnotation pos="3.5 0.5 2.5" color="#00ff00">
        输入
    </DiamondAnnotation>

<DiamondAnnotation pos="3.5 0.5 0.5" color="#00ff00">
        输出
    </DiamondAnnotation>

<DiamondAnnotation pos="4 0.5 1.5" color="#00ff00">
        连接主网络
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 配置

* <ItemLink id="import_bus" />（1）装有几张<ItemLink id="speed_card" />。成型面板越多，需要的加速卡就越多，因为加速卡能让输入总线一次拉取更多物品。
* <ItemLink id="formation_plane" />（2）为默认配置。
* <ItemLink id="annihilation_plane" />（3）无GUI，无法配置，但附魔了时运。
* <ItemLink id="storage_bus" />（4）为默认配置。

## 工作原理

1. 绿色子网上的<ItemLink id="import_bus" />从第一个木桶中输入方块到[网络存储](../ae2-mechanics/import-export-storage.md)
2. 绿色子网上唯一的存储是<ItemLink id="formation_plane" />，它放置方块。
3. 橙色子网上的<ItemLink id="annihilation_plane" />破坏方块，并对其应用时运。
4. 橙色子网上的<ItemLink id="storage_bus" />将破坏产物存储在第二个木桶中。
