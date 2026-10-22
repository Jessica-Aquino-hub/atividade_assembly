.data
 escreva00: .asciiz "Digite o valor da largura do terreno \n"
 escreva01: .asciiz "Digite o valor da comprimento do terreno \n"
 escreva02: .asciiz "O valor da área = "
 .text
main:
# mostra largura
 li $v0, 4
 la $a0, escreva00 
 syscall 
#ler largura
 li $v0, 5
 syscall 
 add $t0,$v0,0
# mostra comprimento
 li $v0, 4
 la $a0, escreva01 
 syscall 
#ler comprimento
 li $v0, 5
 syscall 
 add $t1,$v0,0
# calculo
 mul $t2,$t1,$t0
#mostrar
 li $v0, 4
 la $a0, escreva02
 syscall 
 li $v0, 1
 add $a0, $t2, 0
 syscall
 
