menu = ["Criar Jogo", "Entrar em Jogo", "Sair"];

cur_index = 0;

global.name = get_string("Escolha seu nome","");

global.ip = get_string("Digite o IP que deseja entrar", "");
if (global.ip == "") {
	global.ip = "127.0.0.1";
}

//global.ip == "" ? "127.0.0.1" : global.ip;