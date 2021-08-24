programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u

	inteiro mario = -1
	
	funcao inicio()
	{
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(800, 600)
		mario = g.carregar_imagem("mario.png")
		inteiro x = 0
		inteiro y = 0
		
		enquanto(verdadeiro) {
			g.definir_cor(g.COR_BRANCO)
			g.limpar()
			g.desenhar_imagem(x, y, mario)
			
			se(t.tecla_pressionada(t.TECLA_SETA_ESQUERDA)){
				x--
			}
			se(t.tecla_pressionada(t.TECLA_SETA_DIREITA)){
				x++
			}
			se(t.tecla_pressionada(t.TECLA_SETA_ACIMA)){
				y--
			}
			se(t.tecla_pressionada(t.TECLA_SETA_ABAIXO)){
				y++
			}
			
			g.renderizar()
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 299; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */