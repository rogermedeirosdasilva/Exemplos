package tretaneverends.com.br.customadapter.core;

import java.util.ArrayList;

import tretaneverends.com.br.customadapter.model.Pessoa;

/**
 * Created by roger on 11/12/2014.
 * Author : Roger Medeiros
 * Date : 2014-12-11
 */
public class PessoaCore {
    public ArrayList<Pessoa> getFakeList()
    {
        ArrayList<Pessoa> lista = new ArrayList<Pessoa>();

        for (Integer i = 0; i < 20; i++) {
            lista.add( new Pessoa(
                i,
                "Nome " + i.toString(),
                "9999999" + i.toString(),
                "Cidade " + i.toString(),
                "RS"
            ) );
        }

        return  lista;
    }
}
