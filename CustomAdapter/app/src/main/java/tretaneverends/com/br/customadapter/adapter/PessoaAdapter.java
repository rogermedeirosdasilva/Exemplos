package tretaneverends.com.br.customadapter.adapter;

import android.widget.ArrayAdapter;
import android.content.Context;
import java.util.ArrayList;
import android.view.View;
import android.widget.TextView;
import android.view.LayoutInflater;
import tretaneverends.com.br.customadapter.R;
import tretaneverends.com.br.customadapter.model.Pessoa;
import android.view.ViewGroup;

/**
 * Created by roger on 11/12/2014.
 * Author : Roger Medeiros
 * Date : 2014-12-11
 */
public class PessoaAdapter extends ArrayAdapter<Pessoa> {
    private ArrayList<Pessoa> objects;
    private TextView fNome;
    private TextView fTelefone;
    private TextView fCidade;
    private TextView fUF;

    public PessoaAdapter(Context context, int textViewResourceId, ArrayList<Pessoa> objects) {
        super(context, textViewResourceId, objects);
        this.objects = objects;
    }

    @Override
    public View getDropDownView(int position, View convertView,ViewGroup parent)
    {
        return getCustomView(position, convertView, parent);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent)
    {
        return getCustomView(position, convertView, parent);
    }

    public View getCustomView(int position, View convertView, ViewGroup parent){
        View v = convertView;

        if (v == null) {
            LayoutInflater inflater = (LayoutInflater) getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            v = inflater.inflate(R.layout.adapter_pessoa, null);
        }

        Pessoa i = objects.get(position);

        if (i != null) {
            TextView fNome = (TextView) v.findViewById(R.id.fNome);
            TextView fTelefone = (TextView) v.findViewById(R.id.fTelefone);
            TextView fCidade = (TextView) v.findViewById(R.id.fCidade);
            TextView fUF = (TextView) v.findViewById(R.id.fEstado);

            fNome.setText(i.getNome());
            fTelefone.setText(i.getTelefone());
            fCidade.setText(i.getCidade());
            fUF.setText(i.getEstado());
        }

        return v;
    }
}
