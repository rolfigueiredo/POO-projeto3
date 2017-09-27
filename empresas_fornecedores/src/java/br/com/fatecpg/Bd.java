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
    
    private static Map<String,Cliente> clientes;
    public static Map<String,Cliente> getClientes(){
        if (clientes==null) clientes = new HashMap<String,Cliente>();
        return clientes;
    }
    
    private static Map<String,Fornecedor> fornecedores;
    public static Map<String,Fornecedor> getFornecedores(){
        if (fornecedores==null) fornecedores = new HashMap<String,Fornecedor>();
        return fornecedores;
    }
}
