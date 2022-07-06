void showField(){
    for(int i = 0; i < fie.field_Width; i++){
        for(int j = 0; j < fie.field_Height; j++){
            //fill(255);
            fie.setSquareSize();
            if(fie.field[i][j].isOpened && !fie.field[i][j].isBomb){

                rect(fie.squareSize * i + fie.fieldMarginX, fie.squareSize * j + fie.fieldMarginY, fie.squareSize, fie.squareSize);
                fill(255);
                text(fie.field[i][j].surroundBombCount, fie.squareSize * i + 15 + fie.fieldMarginX, fie.squareSize * j + 17 + fie.fieldMarginY);
            }
            
            fill(0);
        }    
    }
}