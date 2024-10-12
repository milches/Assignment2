class Tile {
  int x, y;
  int tileW, tileH;
  PGraphics pg;

  Tile(int x, int y, int tileW, int tileH, PGraphics pg) {
    this.x = x;
    this.y = y;
    this.tileW = tileW;
    this.tileH = tileH;
    this.pg = pg;
  }

  void display() {
    int wave = int(sin(frameCount * 0.01 + (x * y)) * 30);

    // SOURCE
    int sx = x * tileW + wave;
    int sy = y * tileH;
    int sw = tileW;
    int sh = tileH;

    // DESTINATION
    int dx = x * tileW;
    int dy = y * tileH;
    int dw = tileW;
    int dh = tileH;

    copy(pg, sx, sy, sw, sh, dx, dy, dw, dh);
  }
}
