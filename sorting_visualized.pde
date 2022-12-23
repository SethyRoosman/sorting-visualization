int _width = 800;
int _height = 450;

int[] board = new int[_width];
color white = color(255, 255, 255);

int updateBoard(int index) {
  if (index + 1 == _width) {
    // When the index reaches its max value, go back to 0
    index = 0;
    //exit();
  } else {
    if (board[index] > board[index + 1]) {
      int temp = board[index + 1];
      board[index + 1] = board[index];
      board[index] = temp;
    }
    index++;
  }
  return index;
}

void setup() {
  size(800, 450);
  // this is where we create a random board
  for (int i = 0; i < _width; i++) {
    board[i] = int(random(_height));
  }
  background(0);
}

int index = 0;

void draw() {
  background(0);
  for (int k = 0; k < _width; k++) {
    for (int i = 0; i < board[k]; i++) {
      set(k, i, white);
    }
  }
  index = updateBoard(index);
}
