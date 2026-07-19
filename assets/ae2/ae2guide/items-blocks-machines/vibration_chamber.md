---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 谐振仓
  icon: vibration_chamber
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:vibration_chamber
---

# 谐振仓

<BlockImage id="vibration_chamber" p:active="true" scale="8" />

虽然为网络提供[能源](../ae2-mechanics/energy.md)的主要方式是<ItemLink id="energy_acceptor" />，但谐振仓可以直接生成少量到中等数量的AE。

默认情况下（无[升级卡](upgrade_cards.md)且使用默认配置），它产生40 AE/t。

当网络的[能源](../ae2-mechanics/energy.md)存储已满时，谐振仓会降低输出以节省燃料，但无法完全关闭。

## 设置

*   谐振仓提供了查看能源以AE或E/FE为单位显示的全局设置。

## 升级卡

谐振仓支持以下[升级卡](upgrade_cards.md)：

*   <ItemLink id="energy_card" />将谐振仓的效率提高+50%，最高+150%，即基础效率的250%。
*   <ItemLink id="speed_card" />将谐振仓的燃烧速率提高+50%，最高+150%，即基础功率输出的250%。

## 配置

谐振仓的属性可以在`.minecraft`目录的`config`文件夹中`ae2`文件夹的`common.json`中编辑。

*   `baseEnergyPerFuelTick`设置谐振仓的基础（未升级）效率。
*   `minEnergyPerGameTick`设置最低可能的能量生成（即使网络不需要能量，谐振仓也会缓慢消耗一些燃料）。
*   `maxEnergyPerGameTick`设置谐振仓的未升级最大输出（和速度）。

## 合成配方

<RecipeFor id="vibration_chamber" />
