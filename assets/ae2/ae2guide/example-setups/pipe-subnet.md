---
navigation:
  parent: example-setups/example-setups-index.md
  title: 物品/流体"管道"子网
  icon: storage_bus
---

# 物品/流体"管道"子网

一种使用AE2[设备](../ae2-mechanics/devices.md)模拟物品和/或流体管道的简单方法，适用于任何你需要使用物品或流体管道的场景。
这包括将合成结果返回给<ItemLink id="pattern_provider" />。

通常有两种不同的方法可以实现这一点：

## 输入总线 -> 存储总线

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_storage_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        (1) 输入总线：可以设置过滤器。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        (2) 存储总线：可以设置过滤器。此总线（以及其他你希望作为目的地的存储总线）必须是网络上唯一的存储。
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#00ff00">
        来源
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#00ff00">
        目的地
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

来源容器上的<ItemLink id="import_bus" />（1）导入物品或流体，并尝试将其存储到[网络存储](../ae2-mechanics/import-export-storage.md)中。
由于网络上唯一的存储是<ItemLink id="storage_bus" />（2）（这就是为什么这是一个子网而不是你的主网络），物品或流体会被放入目的地容器中，从而完成传输。能源通过<ItemLink id="quartz_fiber" />提供。
输入总线和存储总线都可以设置过滤器，但如果不设置过滤器，此设置将传输它可以访问的所有物品。
此设置也适用于多个输入总线和多个存储总线。

## 存储总线 -> 输出总线

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/storage_export_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        (1) 存储总线：可以设置过滤器。此总线（以及其他你希望作为来源的存储总线）必须是网络上唯一的存储。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        (2) 输出总线：必须设置过滤器。
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#00ff00">
        来源
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#00ff00">
        目的地
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

目的地容器上的<ItemLink id="export_bus" />尝试从[网络存储](../ae2-mechanics/import-export-storage.md)中拉取其过滤器中的物品。
由于网络上唯一的存储是<ItemLink id="storage_bus" />（这就是为什么这是一个子网而不是你的主网络），物品或流体会从来源容器中被拉取，从而完成传输。能源通过<ItemLink id="quartz_fiber" />提供。
由于输出总线必须设置过滤器才能工作，此设置只有在你过滤了输出总线后才会运行。
此设置也适用于多个存储总线和多个输出总线。

## 一个不起作用的设置（输入总线 -> 输出总线）

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_export_pipe.snbt" />

<BoxAnnotation color="#dd3333" min="3.7 0 0" max="4 1 1">
        输入总线：由于网络没有存储，它无处可导入。
  </BoxAnnotation>

<BoxAnnotation color="#dd3333" min="1 0 0" max="1.3 1 1">
        (2) 输出总线：由于网络没有存储，它无物可导出。
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#ff0000">
        来源
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#ff0000">
        目的地
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

仅使用输入总线和输出总线的设置是不起作用的。输入总线将尝试从来源容器中拉取物品，并将物品或流体存储到网络存储中。输出总线将尝试从网络存储中拉取物品，并将物品或流体放入目的地容器中。然而，由于此网络**没有存储**，输入总线无法导入，输出总线无法导出，因此什么都不会发生。

## 通过同一面输入和输出

假设你有一台机器可以通过同一面接收输入并拉取输出。（比如<ItemLink id="charger" />）
你可以通过组合两种管道子网方法，同时推入材料和拉出结果：

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_storage_export_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="4 1 1" max="5 1.3 2">
        (1) 输入总线：可以设置过滤器。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 1 1" max="3 1.3 2">
        (2) 存储总线：可以设置过滤器。此总线（以及其他你希望推入和拉出物品的存储总线）必须是网络上唯一的存储。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 0 1" max="3 1 2">
        (3) 你想要推入和拉出的设备：在此例中是充能器。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 1" max="1 1.3 2">
        (4) 输出总线：必须设置过滤器。
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 1.5" color="#00ff00">
        来源
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 1.5" color="#00ff00">
        目的地
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 接口

事实上，除了输入总线和输出总线之外，还有其他[设备](../ae2-mechanics/devices.md)可以将物品推入和拉出[网络存储](../ae2-mechanics/import-export-storage.md)！
这里相关的是<ItemLink id="interface" />。如果插入了一个接口未设置为存储的物品，接口会将其推送到网络存储中，我们可以利用这一点，类似于输入总线 -> 存储总线管道。将接口设置为存储某些物品会从网络存储中拉取这些物品，类似于存储总线 -> 输出总线管道。接口可以设置为存储某些物品而不存储其他物品，允许你通过存储总线远程推入和拉出物品，如果你有某种理由想要这样做的话。

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/interface_pipes.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        接口
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        存储总线
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.7 0 2" max="4 1 3">
        存储总线
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 2" max="1 1.3 3">
        接口
  </BoxAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 一对多和多对一（以及多对多）

当然，你不必只使用一个<ItemLink id="import_bus" />或<ItemLink id="export_bus" />或<ItemLink id="storage_bus" />

<GameScene zoom="3" background="transparent">
<ImportStructure src="../assets/assemblies/many_to_many_pipe.snbt" />

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

## 向多个位置供应

从所有这些中，我们可以推导出一种方法，将材料从<ItemLink id="pattern_provider" />的一个面发送到多个不同的位置，比如一组机器，或者一台机器的多个不同面。

我们不想要输入 -> 存储管道或存储 -> 输出管道，因为<ItemLink id="pattern_provider" />实际上从不包含材料。相反，供应器*将*材料推送到相邻的容器中，因此我们需要一个也能导入物品的相邻容器。

这听起来像是……一个<ItemLink id="interface" />！
确保供应器处于定向或平面子部件模式，和/或接口处于平面子部件模式，这样两者就不会形成网络连接。

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        接口（必须是平面模式，不是完整方块模式）
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 4">
        存储总线
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 4">
        你想要样板供应的位置（多台机器，或一台机器的多个面）
  </BoxAnnotation>

<IsometricCamera yaw="185" pitch="30" />
</GameScene>