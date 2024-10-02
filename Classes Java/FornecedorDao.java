package org.trabalhos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

public class FornecedorDao {

		//private static LinkedList<Fornecedor> lista = new LinkedList<Fornecedor>();

	public void salvar(Fornecedor f) {
		if (f.getIdfornecedor()>0) {
			editar(f);
		} else {
			adicionar(f);
		}
	}

	public void adicionar(Fornecedor f) {
		//lista.add(f);

		Conexao con = new Conexao();

		try {
			String sql = "INSERT INTO fornecedores (nome, telefone, cnpj, endereco) "
					+ "VALUES (?, ?, ?, ?)";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setString(1, f.getNome());
			prep.setString(2, f.getTelefone());
			prep.setString(3, f.getCnpj());
			prep.setString(4, f.getEndereco());
			prep.execute();
		} catch (Exception e) {
			e.printStackTrace();
}

		con.desconecta();
}


	public void editar(Fornecedor f) {
		Conexao con = new Conexao();
		try {
			String sql = " UPDATE fornecedores SET "
					+ " nome = ?, telefone = ?, "
					+ " cnpj = ?, endereco = ? "
					+ " WHERE id = ?";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setString(1, f.getNome());
			prep.setString(2, f.getTelefone());
			prep.setString(3, f.getCnpj());
			prep.setString(4, f.getEndereco());
			prep.setInt(5, f.getIdfornecedor());
			prep.execute();		
		}	catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}


	public void excluir(Fornecedor f) {
		Conexao con = new Conexao();
		try {
			String sql = " DELETE FROM fornecedores "
					+ " WHERE id = ?";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setInt(1, f.getIdfornecedor());
			prep.execute();		
		}	catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}


	public LinkedList<Fornecedor> listar(){
		//return lista;
		LinkedList<Fornecedor> lista = new LinkedList<Fornecedor>();
		Conexao con = new Conexao();
		try {
			String sql = "SELECT * FROM fornecedores";
			Statement sta = con.getConnection().createStatement();
			ResultSet res = sta.executeQuery(sql);
			while (res.next()) {
				Fornecedor f = new Fornecedor();
				f.setIdfornecedor(res.getInt("id"));
				f.setNome(res.getString("nome"));
				f.setTelefone(res.getString("telefone"));
				f.setCnpj(res.getString("cnpj"));
				f.setEndereco(res.getString("endereco"));
				lista.add(f);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return lista;
	}


	public Fornecedor consultar(int id) {
		Fornecedor f = new Fornecedor();
		Conexao con = new Conexao();
		try {
			String sql = "SELECT * FROM fornecedores WHERE id = " + id;
			Statement sta = con.getConnection().createStatement();
			ResultSet res = sta.executeQuery(sql);
			if (res.next()) {
				f.setIdfornecedor(res.getInt("id"));
				f.setNome(res.getString("nome"));
				f.setTelefone(res.getString("telefone"));
				f.setCnpj(res.getString("cnpj"));
				f.setEndereco(res.getString("endereco"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
		return f;
	}
}