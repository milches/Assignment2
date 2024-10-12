PGraphics pg;
LetterGraphics letterGraphics;
TileGrid tileGrid;

void setup() {
  size(800, 800, P2D);
  letterGraphics = new LetterGraphics("gbc");  
  pg = letterGraphics.pg;
  tileGrid = new TileGrid(8, 8, pg);
}

void draw() {
  background(0);
  letterGraphics.drawLetters();
  tileGrid.display();
}
