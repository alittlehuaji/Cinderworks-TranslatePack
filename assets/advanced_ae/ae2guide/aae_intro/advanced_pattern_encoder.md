---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: 高级样板编码器
  icon: advanced_ae:adv_pattern_encoder
categories:
  - advanced items
item_ids:
  - advanced_ae:adv_pattern_encoder
  - advanced_ae:adv_processing_pattern
---

# 高级样板编码器

为了告知 ME 高级样板供应器应将物品发送到哪里，需要使用一种特殊设备来编码这些信息。手持它右键点击即可打开其界面。

<ItemImage id="advanced_ae:adv_pattern_encoder" scale="4"></ItemImage>

可以将已编码的处理样板放入左侧槽位，样板会被解码，所有原材料随后会显示在列表中。

![PEGui1](../pic/ape_pattern.png)

每一行都有一组按钮，分别代表原材料可以被发送到的所有方块面。将选择保留在“A”按钮上时，物品会被发送到与样板供应器直接连接的方块面；选择特定的面则会强制将物品插入该面。需要注意的是，高级样板只能由<ItemLink id="advanced_ae:adv_pattern_provider" />正确解码；如果在其他类型的样板供应器中使用，其行为会与普通样板相同。
此外，如果某种物品无法插入指定的面，则不会按方向插入任何物品，而会采用标准样板供应器的行为。