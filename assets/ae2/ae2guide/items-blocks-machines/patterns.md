---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 样板
  icon: crafting_pattern
  position: 410
categories:
- tools
item_ids:
- ae2:blank_pattern
- ae2:crafting_pattern
- ae2:processing_pattern
- ae2:smithing_table_pattern
- ae2:stonecutting_pattern
---

# 样板

<ItemImage id="crafting_pattern" scale="4" />

样板是在<ItemLink id="pattern_encoding_terminal" />中使用空白样板制作的，可插入<ItemLink id="pattern_provider" />或<ItemLink id="molecular_assembler" />中使用。

样板有多种不同类型，适用于不同用途：

*   <ItemLink id="crafting_pattern" />编码由工作台完成的合成配方。它们可以直接放入<ItemLink id="molecular_assembler" />中，使其在获得原料时自动合成产物，但其主要用途是放在与分子装配室相邻的<ItemLink id="pattern_provider" />中。样板供应器在此情况下具有特殊行为，会将相关样板连同原料一起发送给相邻的装配室。由于装配室会自动将合成产物弹出到相邻的容器中，因此只需在样板供应器上放置一个装配室即可实现合成样板的自动化。

***

*   <ItemLink id="smithing_table_pattern" />与合成样板非常相似，但它们编码的是锻造台配方。它们同样由样板供应器和分子装配室实现自动化，运作方式完全相同。事实上，合成样板、锻造台样板和切石机样板可以在同一套装置中使用。

***

*   <ItemLink id="stonecutting_pattern" />与合成样板非常相似，但它们编码的是切石机配方。它们同样由样板供应器和分子装配室实现自动化，运作方式完全相同。事实上，合成样板、锻造台样板和切石机样板可以在同一套装置中使用。

***

*   <ItemLink id="processing_pattern" />是自动合成系统灵活性的主要来源。它们是最通用的样板类型，简单地声明"如果样板供应器将这些原料推送到相邻容器中，ME系统将在未来某个时刻收到这些物品"。这是你使用几乎所有模组机器（或熔炉等）进行自动合成的方式。由于它们的用途非常广泛，且不关心在推送原料和接收产物之间发生了什么，你可以做一些非常有趣的操作，比如将原料输入到一个复杂的工厂生产链中，该生产链会分拣物品、从无限产出的农场获取其他原料、打印《蜜蜂总动员》的全部剧本——ME系统都不在乎，只要它能收到样板指定的产物即可。事实上，它甚至不在乎原料与产物之间是否有任何关联。你可以告诉它"1个樱花木板 = 1个下界之星"，并让你的凋灵农场在收到樱花木板时击杀一只凋灵，这完全可行。

支持多个<ItemLink id="pattern_provider" />使用相同的样板并行工作。此外，你可以让样板设定为——例如——8个圆石 = 8个石头，而不是1个圆石 = 1个石头，这样样板供应器每次操作会向你的熔炼装置中投入8个圆石，而不是每次只投入1个。

## 合成配方

<RecipeFor id="blank_pattern" />
