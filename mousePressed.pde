void mousePressed(){
    switch(screenMode){
        case 1:
            int x = 0;int y = 0;
            for(int i = 0; i < fie.field_Width; i++){
                if(mouseX > fie.squareSize * i && mouseX < fie.squareSize * (i+1)){
                    //i番目横が
                    x = i;
                    for(int j = 0; j < fie.field_Height; j++){
                        if(mouseY > fie.squareSize * j && mouseY < fie.squareSize * (j+1)){
                            //j番目縦が
                            y = j;
                            fie.clickedSquare(i,j);
                        }
                    }
                }
            }
            break;
    }
}
