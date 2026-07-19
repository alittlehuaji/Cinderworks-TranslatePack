---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: 导入、导出与存储
---

# 导入、导出与存储

**你的ME系统与世界**

AE2的一个重要概念是网络存储。它是网络内容存储的地方，通常是[存储元件](../items-blocks-machines/storage_cells.md)或<ItemLink id="storage_bus" />连接的任何容器。

大多数AE2[设备](../ae2-mechanics/devices.md)都会以某种方式与之交互。

例如，

*   <ItemLink id="import_bus" />将物品推入网络存储
*   <ItemLink id="export_bus" />从网络存储中拉取物品
*   <ItemLink id="interface" />既从网络存储中拉取物品，也向网络存储推入物品
*   [终端](../items-blocks-machines/terminals.md)在你放入或取出物品时，或在补充合成槽时，也会向网络存储推入或从中拉取物品
*   <ItemLink id="storage_bus" />本身并不真正推入或拉取存储，而是推入或拉取连接的容器，以便将其用作网络存储（因此实际上是其他设备向*它们*推入或从*它们*拉取）

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/import_export_storage.snbt" />

  <BoxAnnotation color="#dddddd" min="8 1 1" max="9 1.3 2">
        输入总线将物品从它们指向的容器中导入到网络存储中
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="8 2 1" max="9 3 1.3">
        从你的物品栏中将物品放入终端算作网络导入该物品
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="7 0 1" max="8 1 2">
        如果接口的槽位未配置为储存任何物品，或者该槽位中的物品数量超过了配置的储存量，接口会从其内部容器中导入物品，因此可以将物品推入接口以插入网络
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="6 0 1" max="7 1 2">
        样板供应器会从其内部返回槽容器中导入物品，因此可以将物品推入样板供应器以插入网络
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 1 1" max="5 2 2">
        ME驱动器将插入的元件作为网络存储
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 1 1" max="4 1.3 2">
        存储总线将它们指向的容器用作网络存储
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 1 1" max="2 1.3 2">
        输出总线将物品从网络存储导出到它们指向的容器中
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 2 1" max="2 3 1.3">
        从终端中取出物品算作网络导出该物品
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 1 1" max="1 2 2">
        如果接口的槽位配置为储存物品，接口会向其内部容器导出物品，因此可以从接口中拉取物品以从网络中提取
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

在设计自动化和物流设置时，记住推入和拉取网络存储的操作/事件非常重要。

## 存储优先级

优先级可以通过点击某些GUI右上角的扳手来设置。

进入网络的物品将从最高优先级的存储开始，作为其第一个目的地。如果两个存储具有相同的优先级，并且其中一个已经包含该物品，则会优先选择该存储。

任何白名单元件在与其他存储处于同一优先级组时，将被视为已经包含该物品。

从存储中移除的物品将从最低优先级的存储中移除。

这种优先级系统意味着，随着物品被插入和移除网络存储，较高优先级的存储将被填满，较低优先级的存储将被清空。
