class LetterGraphics {
  PGraphics pg;
  PFont font;
  String textToDraw;

  LetterGraphics(String textToDraw) {
    font = createFont("RobotoMono-Regular.ttf", 600);
    this.textToDraw = textToDraw;
    pg = createGraphics(800, 800, P2D);
  }

  void drawLetters() {
    pg.beginDraw();
    pg.background(0);
    pg.fill(255);
    pg.textFont(font);

    
    float textSizeValue = findOptimalTextSize(pg.width * 0.8, pg.height * 0.8);
    pg.textSize(textSizeValue);

    pg.textAlign(CENTER, CENTER);
    pg.pushMatrix();
    pg.translate(pg.width / 2, pg.height / 2);
    pg.text(textToDraw, 0, 0);
    pg.popMatrix();
    pg.endDraw();
  }

  float findOptimalTextSize(float desiredWidth, float desiredHeight) {
    float ts = 10;  
    pg.textSize(ts);
    float textWidth = pg.textWidth(textToDraw);
    float textAscent = pg.textAscent();
    float textDescent = pg.textDescent();
    float textHeight = textAscent + textDescent;

    while ((textWidth < desiredWidth) && (textHeight < desiredHeight) && (ts < 1000)) {
      ts += 5;
      pg.textSize(ts);
      textWidth = pg.textWidth(textToDraw);
      textAscent = pg.textAscent();
      textDescent = pg.textDescent();
      textHeight = textAscent + textDescent;
    }
    return ts;
  }
}
