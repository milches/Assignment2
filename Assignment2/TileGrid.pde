class TileGrid {
  int tilesX, tilesY;
  int tileW, tileH;
  Tile[][] tiles;

  TileGrid(int tilesX, int tilesY, PGraphics pg) {
    this.tilesX = tilesX;
    this.tilesY = tilesY;
    tileW = int(width / tilesX);
    tileH = int(height / tilesY);
    tiles = new Tile[tilesY][tilesX];

    for (int y = 0; y < tilesY; y++) {
      for (int x = 0; x < tilesX; x++) {
        tiles[y][x] = new Tile(x, y, tileW, tileH, pg);
      }
    }
  }

  void display() {
    for (int y = 0; y < tilesY; y++) {
      for (int x = 0; x < tilesX; x++) {
        tiles[y][x].display();
      }
    }
  }
}
