package tretaneverends.com.br.customadapter.model;

/**
 * Created by roger on 11/12/2014.
 * Author : Roger Medeiros
 * Date : 2014-12-11
 */
public class Pessoa {
    private Integer ID;
    private String Nome;
    private String Telefone;
    private String Cidade;
    private String Estado;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String nome) {
        Nome = nome;
    }

    public String getTelefone() {
        return Telefone;
    }

    public void setTelefone(String telefone) {
        Telefone = telefone;
    }

    public String getCidade() {
        return Cidade;
    }

    public void setCidade(String cidade) {
        Cidade = cidade;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String estado) {
        Estado = estado;
    }

    public Pessoa(int _id, String _nome, String _telefone, String _cidade, String _estado) {
        this.ID = _id;
        this.Nome = _nome;
        this.Telefone = _telefone;
        this.Cidade = _cidade;
        this.Estado = _estado;
    }
}