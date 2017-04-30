/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Jan
 */
public class WordModel {
    private String word;
    private String type;
    private String def;
    private String id;
    
    public String getId(){
        return id;
    }
    public void setId(String id){
        this.id = id;
    }
    
    public String getWord() {
        return word;
    }
        public void setWord(String word) 
    
    {
        this.word = word;
    }
     public String getType() {
        return type;
    }
        public void setType(String T) 
        {
        this.type = T;
    }
     public String getDef() {
        return def;
    }
         public void setDef(String d) {
        this.def = d;
    }
}
