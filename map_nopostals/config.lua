--[[
    This is the offsets table. This tells the script where to create new map tiles.    
    The origin point from which offset positions are calculated is defined by the
    vBitmapStartX and vBitmapStartY, same as in the minimap.ymt file. Do not modify
    the vBitmapStartX and vBitmapStartY, or the script will not function correctly.

    The keys of each tile can be arbitrary, maybe something so you can identify them,
    but they have to be unique.

    xOffset represents the number of tiles away from the origin point to place the new
    tile on the X axis. A positive xOffset will place the new tile to the right of the
    origin on the X axis and to the left for negative values.

    Same for yOffset, but on the Y axis. Positive values place it above the origin and
    negative values place it below the origin point.

    If needed, xOffset and yOffset you can omit the xOffset and yOffset fields and use
    just x and y fields that represent in-game XY coordinates.
    
    Remember that the anchor point of all new tiles is the top left corner of the tile,
    unless setting centered to true.

    Other optional fields include are:
    - alpha: sets the alpha of the tile. Ranges from 0 to 100.
    - rotation: Sets the rotation of the tile in a clockwise direction. Ranges from 0 to 360.
    - centered: Sets the tile in the center of the chosen point. Can be true or false.


    Important: By default, one tile's dimensions are 4500x4500. This is useful when creating
    a grid of tiles using in-game XY coordinates so that you can perfectly align them together.
    
]]

-- Extra tiles can be placed at any offets, they don't have to be "connected" to the default
-- map's tiles.
extraTiles = {

    -- 2 tiles in the top left corner of the default map
    [1] = {xOffset = 0, yOffset = 1, txd = "minimap_extra_tile_1", txn = "extra_tile_1"},
}


-- Default alpha value that will be used if not specified in the extraTiles table.
defaultAlpha = 100
