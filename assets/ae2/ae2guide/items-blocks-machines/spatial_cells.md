---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 空间元件
  icon: spatial_storage_cell_128
  position: 410
categories:
- tools
item_ids:
- ae2:spatial_storage_cell_2
- ae2:spatial_storage_cell_16
- ae2:spatial_storage_cell_128
- ae2:spatial_cell_component_2
- ae2:spatial_cell_component_16
- ae2:spatial_cell_component_128
---

# 空间存储元件

  <Row>
    <ItemImage id="spatial_storage_cell_2" scale="4" />

    <ItemImage id="spatial_storage_cell_16" scale="4" />

    <ItemImage id="spatial_storage_cell_128" scale="4" />
  </Row>

空间存储元件用于[存储物理空间体积](../ae2-mechanics/spatial-io.md)。
它们在<ItemLink id="spatial_io_port" />中使用。

与[存储元件](../items-blocks-machines/storage_cells.md)不同，空间元件无法被重新格式化。

再次强调，**空间元件在使用后无法被重置、重新格式化或调整大小。** 如果你想使用不同的尺寸，请制作一个新的元件。


## 合成配方

  <Row>
    <Recipe id="network/cells/spatial_storage_cell_2_cubed_storage" />

    <Recipe id="network/cells/spatial_storage_cell_16_cubed_storage" />

    <Recipe id="network/cells/spatial_storage_cell_128_cubed_storage" />
  </Row>

# 外壳

元件可以由空间组件和外壳制成，或者用外壳配方围绕空间组件来制作：

<Row>
  <Recipe id="network/cells/spatial_storage_cell_2_cubed" />

  <Recipe id="network/cells/spatial_storage_cell_2_cubed_storage" />
</Row>

外壳本身的合成方式如下：

  <RecipeFor id="item_cell_housing" />

# 空间组件

空间组件是空间存储元件的核心。每一等级将可存储的空间体积尺寸扩大8倍。

  <Row>
    <RecipeFor id="spatial_cell_component_2" />

    <RecipeFor id="spatial_cell_component_16" />

    <RecipeFor id="spatial_cell_component_128" />
  </Row>