package tretaneverends.com.br.customadapter;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.widget.ListView;
import java.util.ArrayList;

import tretaneverends.com.br.customadapter.adapter.PessoaAdapter;
import tretaneverends.com.br.customadapter.core.PessoaCore;
import tretaneverends.com.br.customadapter.model.Pessoa;

public class MainActivity extends ActionBarActivity {

    private ArrayList<Pessoa> m_parts = new ArrayList<Pessoa>();
    private PessoaAdapter m_adapter;
    private ListView mListView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Bind();
    }

    private void Bind() {
        m_parts = new PessoaCore().getFakeList();

        m_adapter = new PessoaAdapter(this, R.layout.adapter_pessoa, m_parts);

        mListView = (ListView)findViewById(R.id.listapessoas);
        mListView.setAdapter(m_adapter);
    }
}
