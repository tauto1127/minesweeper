class OpenSquareRobot{
    private int x;
    private int y;
    private Square[][] field;
    private int[][] autoOpenSquare = new int[fie.field_Height][fie.field_Width];
    OpenSquareRobot(int x,int y,Square[][] field){
        this.x = x;
        this.y = y;
        this.field = field;
        searchSquare(x,y);
    }
    public int[][] getAutoOpenedSquare(){
        /*
        for(int i = 0;i < fie.field_Height;i++){
            for(int j = 0;j < fie.field_Width; j++){
                if(autoOpenSquare[i][j] == 1){field[i][j].isOpened}
            }
        }*/
        
        return autoOpenSquare;
    }
    boolean checkAndOpenSquare(int x,int y){
        if(fie.field[x][y].surroundBombCount == 0 && autoOpenSquare[x][y] == 0){
            autoOpenSquare[x][y] = 1;
            
            return true;
        }else{return false;}
    }
    void searchSquare(int x, int y){
        try {
            if(checkAndOpenSquare(x-1,y-1)){
                searchSquare(x-1,y-1);
            }
        }catch (ArrayIndexOutOfBoundsException e) {
            
        }try {
            if(checkAndOpenSquare(x,y-1)){
                searchSquare(x,y-1);
            }
        }catch (ArrayIndexOutOfBoundsException e) {
            
        }try {
            if(checkAndOpenSquare(x+1,y-1)){
                searchSquare(x+1,y-1);
            }
        }catch (ArrayIndexOutOfBoundsException e) {
            
        }try {
            if(checkAndOpenSquare(x-1,y)){
                searchSquare(x-1,y);
            }
        }catch (ArrayIndexOutOfBoundsException e) {
            
        }try {
            if(checkAndOpenSquare(x+1,y)){
                searchSquare(x+1,y);
            }
        }catch (ArrayIndexOutOfBoundsException e) {
            
        }try {
            if(checkAndOpenSquare(x-1,y+1)){
                searchSquare(x-1,y+1);
            }
        }catch (ArrayIndexOutOfBoundsException e) {
            
        }try {
            if(checkAndOpenSquare(x,y+1)){
                searchSquare(x,y+1);
            }
        }catch (ArrayIndexOutOfBoundsException e) {
            
        }try {
            if(checkAndOpenSquare(x+1,y+1)){
                searchSquare(x+1,y+1);
            }
        }catch (ArrayIndexOutOfBoundsException e) {
            
        }
    }
}
