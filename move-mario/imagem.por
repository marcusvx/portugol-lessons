programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u

	inteiro mario = -1
	
	funcao inicio()
	{
		inteiro x = 0
		inteiro y = 0
		inteiro tamXMario = 254
		inteiro tamYMario = 320
		inteiro tamX = 800
		inteiro tamY = 600
		
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(tamX, tamY)
		mario = g.carregar_imagem("mario.png")
	
		
		enquanto(verdadeiro) {
			g.definir_cor(g.COR_BRANCO)
			g.limpar()
			g.desenhar_imagem(x, y, mario)
			
			se(t.tecla_pressionada(t.TECLA_SETA_ESQUERDA) e x > 0){
				x--
			}
			se(t.tecla_pressionada(t.TECLA_SETA_DIREITA) e x < tamX - tamXMario){
				x++
			}
			se(t.tecla_pressionada(t.TECLA_SETA_ACIMA) e y > 0){
				y--
			}
			se(t.tecla_pressionada(t.TECLA_SETA_ABAIXO) e y < tamY - tamYMario){
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
 * @POSICAO-CURSOR = 583; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */