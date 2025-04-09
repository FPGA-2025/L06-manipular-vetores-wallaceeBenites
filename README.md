# Manipular Vetores

Além de saber operar sobre vetores, é muito importante ter a habilidade de manipulá-los. Ensinar isso será o objetivo deste laboratório. Alguns exemplos de manipulação de vetores é extrair certos campos de uma instrução de processador ou então trocar a *endianess* da palavra de dados.

## Big Endian e Little Endian

Suponha que você tem uma palavra que ocupa 4 bytes. Usaremos aqui 0x11223344. Como essa palavra deve ser guardada na memória? Tradicionalmente, existem duas maneiras mais usadas para fazer esse armazenamento: Big Endian e Little Endian. Pensando na memória como um grande vetor de bytes com várias posições, nossa palavra de 4 bytes pode ser guardada nas primeiras posições da memória das duas maneiras mostradas abaixo:

| Big Endian         |-----|-----|-----|-----|
|--------------------|-----|-----|-----|-----|
| Posição na memória |  0  |  1  |  2  |  3  |
|        byte        |  11 |  22 | 33  |  44 |

| Little Endian      |-----|-----|-----|-----|
|--------------------|-----|-----|-----|-----|
| Posição na memória |  0  |  1  |  2  |  3  |
|        byte        |  44 |  33 | 22  |  11 |

A grande diferença aqui é que o byte mais significativo, o `11`, pode ficar no maior (3) ou então no menor (0) endereço de memória.

A título de exemplo, os antigos mainframes da IBM utilizavam o formato Big Endian enquanto muitos processadores modernos de arquitetura x86 e RISC-V usam Little Endian.

## Trocar a endianess da palavra

A atividade aqui proposta consiste em receber uma palavra de 4 bytes (32 bits) e inverter a endianess dessa palavra. Se a palavra chegou como 0x11223344, ela deve sair como 0x44332211. Isso quer dizer que os bytes de índice menor serão colocados em partes do vetor de íncice maior e vice-versa. Não é necessária mais nehuma operação sobre a palavra. Basta inverter os bytes e mostrar na saída.

## Execução da atividade

Siga o modelo de módulo já fornecido e utilize o testbench e scripts de execução para sua verificação. Em seguida, implemente o circuito de acordo com as especificações e, se necessário, crie outros testes para verificá-lo.

Uma vez que estiver satisfeito com o circuito, execute o script de testes com `./run-all.sh`. Serão feitos 10 testes: cada um deles mostrará na tela `ERRO` em caso de falha ou `OK` em caso de sucesso.

## Entrega

Para entregar o projeto, basta fazer um *commit* no repositório do GitHub. O GitHub Classroom já está configurado para verificar a entrega e atribuir a nota dos testes automaticamente.

> Os testes do GitHub estão embutidos nos arquivos do laboratório. Se quiser saber mais sobre eles, veja o script de correção 'run.sh' do repositório do GitHub. Não altere os arquivos de correção!