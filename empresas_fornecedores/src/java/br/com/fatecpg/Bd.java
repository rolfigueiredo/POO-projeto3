package br.com.fatecpg;

import java.util.HashMap;
import java.util.Map;

public class Bd {
    //Tamanho Inicial da Lista
    private static int ind = 0;
    
    //Tamanho Inicial da Lista
    private static int initialSize = 16;
               
   //Valor do Load Factor
    private static double loadFactor = 0.75;
    
    private static double sizeToRefresh = initialSize * loadFactor;
    
    private static Map<Integer,Cliente> contatos;
    public static Map<Integer,Cliente> getContatos(){
        if (contatos==null) contatos = new HashMap<Integer,Cliente>();
        return contatos;
    }
}
