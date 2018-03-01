float x = 0;
float y = 0;
float[][] transforms;
float[] probabilities;

void setup() {
  size(400, 400);
  background(102);
  
  transforms = new float[][] {{0, 0, 0, 0.16, 0, 0},
                              {0.85, -0.04, 0.04, 0.85, 0, 1.6},
                              {0.2, 0.23, -0.26, 0.22, 0, 1.6},
                              {-0.15, 0.26, 0.28, 0.24, 0, 0.44}};
  
  probabilities = new float[] {0.02, 0.84, 0.07, 0.07};
  
  plotPoint(x, y);
}

void draw() {
  for (int n = 0; n < 1; n++) {
    int index;
    float r = random(1);
    
    float p0 = probabilities[0];
    float p1 = probabilities[1];
    float p2 = probabilities[2];
    float p3 = probabilities[3];
    
    if (r <= p0) {
      index = 0;
    } else if (r <= p0 + p1) {
      index = 1;
    } else if (r <= p0 + p1 + p2) {
      index = 2;
    } else {
      index = 3;
    }
    
    float[] tr = transforms[index];
    
    float[] pt = transform(tr[0], tr[1], tr[2], tr[3], tr[4], tr[5], x, y);
    x = pt[0];
    y = pt[1];
    
    plotPoint(x, y);
  }
}

void plotPoint(float x, float y) {
  float drawX = map(x, -3, 3, 0, width);
  float drawY = map(y, 0, 10, height, 0);
  
  stroke(0, 255, 0);
  strokeWeight(2);
  point(drawX, drawY);
}

void mousePressed() {
  
}

float[] transform(float ix, float iy, float jx, float jy, float ox, float oy, float x, float y) {
  float newX = ix * x + jx * y;
  float newY = iy * x + jy * y;
  
  newX += ox;
  newY += oy;
  
  return new float[] {newX, newY};
}