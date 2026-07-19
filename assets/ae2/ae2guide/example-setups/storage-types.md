---
navigation:
  parent: example-setups/example-setups-index.md
  title: 存储类型与网络整洁
  icon: drive
---

# 各种存储类型与保持网络整洁

使用筛选器、[分区](../items-blocks-machines/cell_workbench.md)和[存储优先级](../ae2-mechanics/import-export-storage.md#storage-priority)，你可以为不同类型的物品设置多层存储。

存储类型通常分为：
* 通用存储，用于存储你拥有几到几千个的各种杂物。使用小型[元件](../items-blocks-machines/storage_cells.md)，如4k或16k。
* 批量存储，用于存储你拥有几千个以上的物品，如圆石或铁锭。使用大型元件，如256k或MEGA附属模组的元件。
* 农场本地存储，如[专用本地存储](specialized-local-storage.md)和[各种](simple-certus-farm.md)[赛特斯](semiauto-certus-farm.md)[农场](advanced-certus-farm.md)中所述。

优先级的设置使得当物品被倾倒到主网络时，系统首先尝试将其存储在专用的批量或本地存储中，如果无法做到（由于筛选器和分区），则将物品放入通用存储中。这意味着物品**不会**从一个存储主动移动到另一个存储，但会在进出网络时"迁移"。要主动移动物品，请使用<ItemLink id="io_port" />。

<GameScene zoom="3" interactive={true}>
  <ImportStructure src="../assets/assemblies/network_storage_types.snbt" />

    <BoxAnnotation color="#33dd33" min="11 0 1" max="12 1.3 2" thickness="0.05">
        批量存储。此处为在大容量存储（如抽屉）上的筛选存储总线。此存储总线筛选为煤炭。它具有高优先级，因此当煤炭进入网络时，会流向此存储总线；当煤炭从网络中取出时，会从*除此处以外的所有地方*取出，因此煤炭会"迁移"到此抽屉中。

        重要说明：像抽屉这样的大型优化存储设备适合此用途，但像巨型箱子这样具有许多槽位的大型*非*优化存储设备与存储总线配合使用时会严重影响性能。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="11 0 3" max="12 1 4" thickness="0.05">
        批量存储。此处为驱动器中具有高优先级的已分区256k元件。此元件分区为圆石和铁锭。它装有均分卡，因此不会被圆石完全填满，从而为铁锭留出空间。驱动器具有高优先级，因此当圆石或铁锭进入网络时，会流向此存储总线；当圆石或铁锭从网络中取出时，会从*除此处以外的所有地方*取出，因此圆石和铁锭会"迁移"到此元件中。
    </BoxAnnotation>

    <BoxAnnotation color="#33dddd" min="11 0 5" max="12 1 6" thickness="0.05">
        通用存储。此处为装满16k元件的驱动器。这些元件未分区。驱动器具有中性优先级（此处为0），因此当物品进入网络时，会优先流向专用的批量或本地存储；当物品从网络中取出时，会优先从此处取出，因此拥有专用存储的物品自然会从通用存储中"迁移"出去。
    </BoxAnnotation>

    <BoxAnnotation color="#88ff88" min="11 0 8" max="12 1 9" thickness="0.05">
        此IO端口在保持网络整洁方面发挥着重要作用。由于存储优先级不会*主动*移动物品，通用存储中使用的元件应定期通过IO端口进行"洗牌"，将拥有专用存储位置的物品移入该专用存储中。这会"碎片整理"存储，确保物品不会存储在多个地方。
    </BoxAnnotation>

    <BoxAnnotation color="#dd3333" min="14 0 11" max="15 1 12" thickness="0.05">
        怪物农场的本地存储。此驱动器中的元件分区为你想要保留的掉落物，如骨头和箭矢。驱动器本身未设置优先级，因为影响优先级的是从主网络访问子网络的存储总线。元件装有均分卡和溢出销毁卡。
    </BoxAnnotation>

    <BoxAnnotation color="#dd3333" min="14 1 10" max="15 2.3 11" thickness="0.05">
        怪物农场的本地存储。此存储总线-接口设置允许主网络访问此子网络的存储。存储总线设置了高优先级，并筛选为子网络元件中存储的物品。

        重要提示：由于子网络上有垃圾桶设置，请确保筛选此存储总线，否则它会开始销毁*进入网络的每一个物品、流体等*！
    </BoxAnnotation>

    <BoxAnnotation color="#dd3333" min="14 0 9" max="15 1.3 10" thickness="0.05">
        怪物农场的本地存储。此物质聚合器上的存储总线设置为低于驱动器的优先级。这意味着无法进入驱动器元件的怪物掉落物会溢出到此处并被处理掉。这一点很重要，以防止子网络被各种垃圾物品（如几乎损坏的弓）堵塞。
    </BoxAnnotation>

    <BoxAnnotation color="#dd33dd" min="8 1 11.7" max="9 2.3 13" thickness="0.05">
        西瓜农场的本地存储。此设置使用了各种赛特斯农场示例中类似的方法。子网络上的存储总线将种植的物品插入桶中。主网络上的另一个存储总线（筛选为西瓜片并具有高优先级）使主网络可以访问种植的物品。
    </BoxAnnotation>

  <IsometricCamera yaw="270" pitch="30" />
</GameScene>
