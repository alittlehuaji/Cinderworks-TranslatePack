---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 分子装配室
  icon: molecular_assembler
  position: 310
categories:
- machines
item_ids:
- ae2:molecular_assembler
---

# 分子装配室

<BlockImage id="molecular_assembler" scale="8" />

分子装配室接受输入的物品，并执行相邻<ItemLink id="pattern_provider" />定义的操作，或使用插入的<ItemLink id="crafting_pattern" />、<ItemLink id="smithing_table_pattern" />或<ItemLink id="stonecutting_pattern" />，然后将产物推送到相邻的容器中。

这个装配室有一个指定了1个原木=4个橡木木板配方的合成样板。当橡木原木从上方漏斗喂入时，装配室会进行合成并将橡木木板吐入下方漏斗。

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/standalone_assembler.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 分子装配室的主要用途

然而，它们的主要用途是放置在<ItemLink id="pattern_provider" />旁边。样板供应器在这种情况下有特殊行为，会将相关样板的信息连同材料一起发送给相邻的装配室。由于装配室会自动将合成产物弹出到相邻容器中（也就是样板供应器的返回槽），因此只需在样板供应器旁放置一个装配室即可实现自动合成样板。

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/assembler_tower.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 升级

分子装配室支持以下[升级](upgrade_cards.md)：

*   <ItemLink id="speed_card" />

## 合成表

<RecipeFor id="molecular_assembler" />

## 注意

Optifine会破坏"推送到相邻容器"的功能，因此大多数使用装配室的合成设置将无法正常工作。