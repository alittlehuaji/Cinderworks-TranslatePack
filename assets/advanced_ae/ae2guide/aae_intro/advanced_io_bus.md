---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: 高级输入输出总线
  icon: advanced_ae:advanced_io_bus_part
categories:
  - advanced items
item_ids:
  - advanced_ae:advanced_io_bus_part
---

# 高级输入输出总线

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_advanced_io_bus.snbt"></ImportStructure>
</GameScene>

高级输入输出总线是一个与外部物品栏交互的强力工具。它由一个
<ItemLink id="advanced_ae:import_export_bus_part"/>和一个<ItemLink id="advanced_ae:stock_export_bus_part"/>融合而成，并继承了两者的全部功能。此外，高级输入输出总线的基础速度是<ItemLink id="ae2:export_bus"/>的8倍。它需要一段时间才能提升至全速，但完全升级后会快得惊人。

## 输出

高级输入输出总线会按照过滤器输出物品，达到设定数量后停止。界面左侧还有一个选项，可以让玩家选择是否调节物品库存。

## 输入

高级输入输出总线也会输入所有未被过滤为输出的物品。输入和输出操作分别计数，因此总线不会卡在其中一种操作上。当总线被设置为调节库存时，会优先输入超过设定数量的物品。如果还有剩余操作，则会输入未被过滤的物品。

<RecipeFor id="advanced_ae:advanced_io_bus_part"/>