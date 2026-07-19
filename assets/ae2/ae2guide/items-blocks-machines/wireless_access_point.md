---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 无线访问点
  icon: wireless_access_point
  position: 210
categories:
- devices
item_ids:
- ae2:wireless_booster
- ae2:wireless_access_point
---

# 无线访问点

<BlockImage id="wireless_access_point" p:state="has_channel" scale="8" />

允许通过<ItemLink id="wireless_terminal" />进行无线访问。
范围和能耗取决于已安装的<ItemLink id="wireless_booster" />数量。

一个网络可以拥有任意数量的无线访问点，每个访问点中也可以安装任意数量的<ItemLink id="wireless_booster" />，因此你可以通过调整配置来优化能耗和范围。

需要一个[频道](../ae2-mechanics/channels.md)。

也可用于绑定[无线终端](wireless_terminals.md)。

# 无线增幅器

<ItemImage id="wireless_booster" scale="2" />

用于增加无线访问点的范围。

## 合成配方

<RecipeFor id="wireless_access_point" />

<RecipeFor id="wireless_booster" />
