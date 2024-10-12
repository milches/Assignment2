class LetterGraphics {
  PGraphics pg;
  PFont font;

  LetterGraphics() {
    font = createFont("RobotoMono-Regular.ttf", 600);
    pg = createGraphics(800, 800, P2D);
  }

  void drawLetter() {
    pg.beginDraw();
    pg.background(0);
    pg.fill(255);
    pg.textFont(font);
    pg.textSize(800);
    pg.pushMatrix();
    pg.translate(width / 2, height / 2 - 215);
    pg.textAlign(CENTER, CENTER);
    pg.text("a", 0, 0);
    pg.popMatrix();
    pg.endDraw();
  }
}
