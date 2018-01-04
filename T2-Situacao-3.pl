%% Problema é somente o time

bom(preparo_fisico).
jogador(robinho).
cartao_vermelho(holder).
jogador(j1).
discute_tecnico(j1).
gols_sofridos(8).
gols_feitos(2).

maior(X,Y) :- X>Y.

problema(preparo_fisico) :- ruim(preparo_fisico).
problema(equipe_tecnica) :- constantes(atritos) , ruim(situacao_psicologica).
problema(time) :- bom(preparo_fisico), ruim(situacao_de_gols).
constantes(atritos) :- jogador(X), discute_tecnico(X).
ruim(situacao_psicologica) :- jogador(X), suspenso(X).
ruim(situacao_de_gols) :- gols_sofridos(X), gols_feitos(Y), maior(X,Y).
suspenso(X) :- cartao_vermelho(X).

discontiguous(jogador/1).
