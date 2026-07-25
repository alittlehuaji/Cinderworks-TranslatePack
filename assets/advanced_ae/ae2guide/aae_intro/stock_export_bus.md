---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: 库存输出总线
  icon: advanced_ae:stock_export_bus_part
categories:
  - advanced items
item_ids:
  - advanced_ae:stock_export_bus_part
---

# 库存输出总线

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_stock_export_bus.snbt"></ImportStructure>
</GameScene>

库存输出总线可以配置为输出过滤物品的精确数量。它会追踪目标物品栏中当前已有的数量，不会插入超过该数量的物品。要进行配置，请打开界面，将所需物品拖入过滤槽，然后使用鼠标中键配置数量。请注意，它不会调节输出；也就是说，如果物品栏中的物品/流体超过了配置数量，它不会将多余部分抽出。