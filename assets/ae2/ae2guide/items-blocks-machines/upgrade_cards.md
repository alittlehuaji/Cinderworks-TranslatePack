---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 升级卡
  icon: speed_card
  position: 410
categories:
- tools
item_ids:
- ae2:basic_card
- ae2:advanced_card
- ae2:redstone_card
- ae2:capacity_card
- ae2:void_card
- ae2:fuzzy_card
- ae2:speed_card
- ae2:inverter_card
- ae2:crafting_card
- ae2:equal_distribution_card
- ae2:energy_card
---

# 升级卡

<Row>
  <ItemImage id="redstone_card" scale="2" />

  <ItemImage id="capacity_card" scale="2" />

  <ItemImage id="void_card" scale="2" />

  <ItemImage id="fuzzy_card" scale="2" />

  <ItemImage id="speed_card" scale="2" />

  <ItemImage id="inverter_card" scale="2" />

  <ItemImage id="crafting_card" scale="2" />

  <ItemImage id="equal_distribution_card" scale="2" />

  <ItemImage id="energy_card" scale="2" />
</Row>

升级卡可以改变AE2[设备](../ae2-mechanics/devices.md)和机器的行为，提高它们的速度、增加过滤容量、启用红石控制等。

## 卡片组件

<Row>
  <ItemImage id="basic_card" scale="2" />

  <ItemImage id="advanced_card" scale="2" />
</Row>

卡片使用基础卡底座或高级卡底座来合成。

<Row>
  <RecipeFor id="basic_card" />

  <RecipeFor id="advanced_card" />
</Row>

## 红石卡

<ItemImage id="redstone_card" scale="2" />

红石卡添加了红石控制功能，在设备的GUI中增加一个切换按钮，可在各种红石条件之间切换。

<RecipeFor id="redstone_card" />

## 容量卡

<ItemImage id="capacity_card" scale="2" />

容量卡增加输入总线、输出总线、存储总线和成型面板的过滤槽位数量。

<RecipeFor id="capacity_card" />

## 溢出销毁卡

<ItemImage id="void_card" scale="2" />

溢出销毁卡可以应用到<ItemLink id="cell_workbench" />中的[存储元件](storage_cells.md)上，当元件满时会删除传入的物品。（确保对你的元件进行[分区](cell_workbench.md)！）与均分卡结合使用时，如果特定物品的分区已满，即使其他物品的分区为空，该物品也会被销毁。

<RecipeFor id="void_card" />

## 模糊卡

<ItemImage id="fuzzy_card" scale="2" />

模糊卡使带有过滤器的设备和工具能够按损坏程度过滤和/或忽略物品NBT数据，允许你导出所有铁斧头（无论损坏程度和附魔如何），或只导出损坏的钻石剑（而非完全修复的）。

以下是模糊损坏比较模式的工作示例，左侧是总线配置，顶部是比较的物品。

| 25%                    | 10% 损坏的镐 | 30% 损坏的镐 | 80% 损坏的镐 | 完全修复的镐 |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| 几乎损坏的镐  | ✅                   | \*\*\*\*            | \*\*\*\*            | \*\*\*\*            |
| 完全修复的镐 | \*\*\*\*            | ✅                   | ✅                   | ✅                   |

| 50%                    | 10% 损坏的镐 | 30% 损坏的镐 | 80% 损坏的镐 | 完全修复的镐 |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| 几乎损坏的镐  | ✅                   | ✅                   | \*\*\*\*            | \*\*\*\*            |
| 完全修复的镐 | \*\*\*\*            | \*\*\*\*            | ✅                   | ✅                   |

| 75%                    | 10% 损坏的镐 | 30% 损坏的镐 | 80% 损坏的镐 | 完全修复的镐 |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| 几乎损坏的镐  | ✅                   | ✅                   | \*\*\*\*            | \*\*\*\*            |
| 完全修复的镐 | \*\*\*\*            |                     | ✅                   | ✅                   |

| 99%                    | 10% 损坏的镐 | 30% 损坏的镐 | 80% 损坏的镐 | 完全修复的镐 |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| 几乎损坏的镐  | ✅                   | ✅                   | ✅                   | \*\*\*\*            |
| 完全修复的镐 | \*\*\*\*            | \*\*\*\*            | \*\*\*\*            | ✅                   |

| 忽略                 | 10% 损坏的镐 | 30% 损坏的镐 | 80% 损坏的镐 | 完全修复的镐 |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| 几乎损坏的镐  | ✅                   | ✅                   | ✅                   | **✅**               |
| 完全修复的镐 | **✅**               | **✅**               | **✅**               | ✅                   |

<RecipeFor id="fuzzy_card" />

## 加速卡

<ItemImage id="speed_card" scale="2" />

加速卡使各项操作变得更快，使输入总线和输出总线每次操作传输更多物品，并使压印器和分子装配室工作更快。

<RecipeFor id="speed_card" />

## 反相卡

<ItemImage id="inverter_card" scale="2" />

反相卡将设备和工具中的过滤器从白名单切换为黑名单。

<RecipeFor id="inverter_card" />

## 合成卡

<ItemImage id="crafting_card" scale="2" />

合成卡使设备能够向你的[自动合成](../ae2-mechanics/autocrafting.md)系统发送合成请求，以获取其所需的物品。

<RecipeFor id="crafting_card" />

## 均分卡

<ItemImage id="equal_distribution_card" scale="2" />

均分卡可以应用到<ItemLink id="cell_workbench" />中的[存储元件](storage_cells.md)上，并根据卡片[分区](cell_workbench.md)的内容将元件分成等大小的区域。这可以防止一种物品类型完全填满元件。

<RecipeFor id="equal_distribution_card" />

## 能源卡

<ItemImage id="energy_card" scale="2" />

能源卡为某些工具（如便携终端）增加了更多能源存储，并使<ItemLink id="vibration_chamber" />更加高效。

<RecipeFor id="energy_card" />
