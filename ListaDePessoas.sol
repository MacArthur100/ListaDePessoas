//SPDX-license-Identifier: MIT
pragma solidity ^0.8.0;

//Contrato para registrar várias pessoas
contract ListaDePessoas {

    //Definindo estrutura Pessoa
    struct Pessoa {
        string nome;
        uint256 idade;
    }

    //Arry público que armazena múltiplas pessoas
    Pessoa[] public pessoas;

    //Função para adicionar uma nova pessoa no array
    function adicionarPessoa(string memory _nome, uint256 _idade) public {
        pessoas.push(Pessoa(_nome, _idade));
    }

    //Função para consultar pessoa por indice
    function obterPessoa(uint256 _indice) public view returns (string memory, uint256) {
        require(_indice < pessoas.length, "Indice invalido");
        Pessoa memory p = pessoas[_indice];
        return (p.nome, p.idade);
    } 

    //Função para saber quantas pessoas já foram registradas 
    function totalPessoas() public view returns (uint256) {
        return pessoas.length;
    }
}