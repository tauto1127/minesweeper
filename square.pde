class Square{
    public boolean isFlag = false;
    public boolean isBomb = false;
    private boolean isOpened = false;
    public int surroundBombCount = 0;
    Square(boolean isFlag, boolean isBomb, boolean isOpened){
        this.isFlag = isFlag;
        this.isBomb = isBomb;
        this.isOpened = isOpened;
    }
    Square(){
      this.isFlag = isFlag;
      this.isBomb = isBomb;
      this.isOpened = isOpened;
    }
    void addSurroundBombCount(){
        surroundBombCount++;
    }
}
