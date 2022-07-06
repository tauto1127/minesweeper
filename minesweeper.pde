Field fie = new Field(20, 20, 60);
import java.awt.event.ComponentAdapter;
import java.awt.event.ComponentEvent;

int lastWindowWidth = 0;
int lastWindowHeight = 0;

int screenMode = 1;
void setup(){
    text("ああああああああああ",300,300);
    size(1000, 1000);
    lastWindowHeight = height;
    lastWindowWidth = width;
      surface.setResizable(true);
    /*
    for(int i = 0; i < ffff.length ; i++){
        for(int j = 0; j < ffff[0].length ; j ++){
            println(i + "：：：" + ffff[i][j]);
        }
    }*/
 //<>// //<>//
}


void draw(){
    switch (screenMode) {
        case 0:
            break;
        case 1:
            background(255);
            //fie.showBomb(1);
            showField();



            if(height != lastWindowHeight){
            lastWindowHeight = height;
            windowSizeChanged();
            
            }if(width != lastWindowWidth){
            lastWindowWidth = width;
            windowSizeChanged();
            }
            break;
        case 2:
            text("GAMEOVER", 100,100);
            break;
        
    }
    
    //background(0);
}
