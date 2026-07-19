---
navigation:
  title: 小技巧与建议
  position: 20
---

# 小技巧与建议

一些零散的小建议

* 移除 Optifine
* 你可以旋转和缩放指南书中的场景，前提是场景有缩放和注释显示/隐藏按钮
* 保持你的网络呈树状结构，避免出现环路
* 全方块[设备](ae2-mechanics/devices.md)每组不超过8个，除非你深入了解[频道](ae2-mechanics/channels.md)在网络中的路由方式
* 选择一种木材并统一用于所有[样板](items-blocks-machines/patterns.md)。虽然在样板中启用替代有时可行，但统一使用同一种木材能大大减少麻烦
* 在<ItemLink id="pattern_access_terminal" />中纵向排列你的[样板](items-blocks-machines/patterns.md)，或将样板分配到多个[供应器](items-blocks-machines/pattern_provider.md)中，以便配方可以并行执行
* 添加一个[能源元件](items-blocks-machines/energy_cells.md)，以便你的网络能够应对功率波动
* 你可以在<ItemLink id="condenser" />中使用水
* 保持网络整洁的最佳方式是不要将剑和护甲等随机怪物战利品放入网络中。每种独特的附魔和耐久度组合都是另一种[类型](ae2-mechanics/bytes-and-types.md)
* 返回[处理样板](items-blocks-machines/patterns.md)的结果时，必须触发"物品进入系统"事件，例如通过<ItemLink id="import_bus" />、<ItemLink id="interface" />或<ItemLink id="pattern_provider" />的返回槽位。你不能简单地将结果管道输送到一个带有<ItemLink id="storage_bus" />的箱子中
* 别忘了你可以旋转和缩放指南书中的场景，前提是场景有缩放和注释显示/隐藏按钮
* <ItemLink id="pattern_provider" />只会推送完整的配方批次，且仅通过单个面推送。这对确保机器不会收到部分批次很有用，但有时你希望原料送往多个位置。你可以使用<ItemLink id="interface" />来实现这一点，将其作为["管道"子网络](example-setups/pipe-subnet.md)使用，或者利用它能同时容纳多种不同物品栏、流体、化学品等的能力，将其作为中转箱/储罐使用
* 你可以缩放和旋转指南书中的场景，前提是场景有缩放和注释显示/隐藏按钮