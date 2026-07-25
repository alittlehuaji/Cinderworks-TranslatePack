---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: 量子计算机
  icon: advanced_ae:quantum_core
categories:
  - advanced devices
item_ids:
  - advanced_ae:quantum_unit
  - advanced_ae:quantum_core
  - advanced_ae:quantum_structure
  - advanced_ae:quantum_accelerator
  - advanced_ae:quantum_multi_threader
  - advanced_ae:quantum_storage_128
  - advanced_ae:quantum_storage_256
  - advanced_ae:data_entangler
---

# 量子计算机

量子计算机是一种特殊的合成计算机。只要拥有足够的合成存储空间，它就能运行无限数量的合成请求。

<GameScene zoom="2" background="transparent">
  <ImportStructure src="../structure/quantum_computer_multiblock.snbt"></ImportStructure>
</GameScene>

## 量子核心

<BlockImage id="advanced_ae:quantum_core" p:powered="true" p:formed="true" scale="4"></BlockImage>

量子核心是量子计算机的核心。它自身拥有256M合成存储空间和8个协处理器线程。它是唯一一个单独就能形成量子计算机并提供量子计算机全部功能的方块。不过，使用它构建多方块结构可以得到强大得多的计算机。作为独立计算机使用时，必须从其带有连接器的上方或下方供电。

## 量子存储

<Row gap="20">
<BlockImage id="advanced_ae:quantum_storage_128" scale="4"></BlockImage>
<BlockImage id="advanced_ae:quantum_storage_256" scale="4"></BlockImage>
</Row>

这些方块可以扩展量子核心的合成存储空间，从而有效增加量子计算机能够同时运行的任务数量。它们有两种变体，容量分别为128M和256M。

## 量子数据纠缠器

<BlockImage id="advanced_ae:data_entangler" scale="4"></BlockImage>

数据纠缠器是一种特殊方块，会影响多方块结构中的所有存储方块。它可以让存储方块在多个维度中存储数据，使其存储容量有效提高至4倍。每个量子计算机多方块结构中最多只能放置一个。

## 量子加速器

<BlockImage id="advanced_ae:quantum_accelerator" scale="4"></BlockImage>

量子加速器会为量子计算机多方块结构增加8个协处理器。需要注意的是，量子计算机运行的所有合成样板都可以共享全部协处理器，因此多放置一些量子加速器通常是个好主意。

## 量子多线程器

<BlockImage id="advanced_ae:quantum_multi_threader" scale="4"></BlockImage>

与数据纠缠器类似，多线程器可以让加速器在不同维度中运行额外线程，使其协处理能力提高至4倍。每个量子计算机多方块结构中最多只能放置一个。

## 量子结构方块

<Row gap="20">
<BlockImage id="advanced_ae:quantum_structure" scale="4"></BlockImage>
<BlockImage id="advanced_ae:quantum_structure" p:formed="true" p:powered="true" scale="4"></BlockImage>
</Row>

这些方块构成量子计算机的框架。它们既是量子计算机的建筑方块，也负责将所有部分连接起来。

## 多方块结构

构建量子计算机多方块结构时，必须遵守以下规则：
- 最大尺寸为7x7x7（外部尺寸）
- 多方块结构内部不能存在空位。可以用<ItemLink id="advanced_ae:quantum_unit" />填充，但不会获得额外效果
- 必须恰好有一个<ItemLink id="advanced_ae:quantum_core" />
- 最多只能有一个<ItemLink id="advanced_ae:data_entangler" />
- 最多只能有一个<ItemLink id="advanced_ae:quantum_multi_threader" />
- 外层的所有方块都必须是<ItemLink id="advanced_ae:quantum_structure" />
- 内部不能有<ItemLink id="advanced_ae:quantum_structure" />

## 服务端配置

服务端配置可以调整多个数值，例如：
- 多方块结构的最大尺寸
- 每个量子加速器提供的协处理器数量
- 量子多线程器的最大数量
- 多线程器线程倍率
- 数据纠缠器的最大数量
- 数据纠缠器的存储倍率

可以通过物品提示查看当前实例的限制。