def exibir_menu():
    print('''Escolha uma opção:

    1. Cadastrar um hotel
    2. Listar hotéis cadastrados
    3. Procurar dados de um hotel
    ''')

def cadastrar(hoteis):

  nome = input('Nome do Hotel ? ')

  print('Descrição do Hotel(cole ou insira o texto abaixo um parágrafo por vez)\nPressione enter numa linha vazia para finalizar: ')
  linhas = []
  while True:
    linha = input()
    if linha:
      linhas.append(linha)
    else:
      break
  descricao = '\n'.join(linhas)

  print('Endereço do Hotel?(cole ou insira o texto abaixo um parágrafo por vez)\nPressione enter numa linha vazia para finalizar:  ')
  linhas = []
  while True:
    linha = input()
    if linha:
      linhas.append(linha)
    else:
      break

  localização = '\n'.join(linhas)
  preço = float(input('Preço da diária ? R$ '))
  link = input("Link do site oficial: ")
  quartos = int(input('Quantidade de quartos ? '))
  indicacoes = input("Indicações: ")

  hoteis.append((nome, descricao, localização, preço, link, quartos, indicacoes))
  
  print("\nCadastro realizado com sucesso! Informações cadastradas:")
  print("\nNome do hotel: ", nome)
  print("Descrição: ", descricao)
  print("Localização: ", localização)
  print("Preço: R$", preço)
  print("link do site oficial: ", link)
  print("Número de quartos: ", quartos)
  print("Indicações: ", indicacoes, "\n")

def listar(hoteis):
  for hotel in hoteis:
      nome = hotel
      print(f'Hotel {nome[0]}, itens: {nome} ')

def buscar(hoteis):
  item_encontrado = False
  identificador_desejado = input('Nome? ')
  for hotel in hoteis:
    for item in hotel:
      if item == identificador_desejado:
        print(f'Item: {identificador_desejado} encontrado no cadastro: {hotel}')
        item_encontrado = True
        break
    if item_encontrado == False:
        print(f'Hotel com id {identificador_desejado} não encontrado em {hotel[0]}')

def main():
  hoteis = []
  num_hoteis = int(input("Número de hoteis que serão cadastrados: "))
  n = num_hoteis

  while num_hoteis > 0:
      exibir_menu()
      opcao = int(input('Opção? '))
      if opcao == 1:
          cadastrar(hoteis)
          num_hoteis -= 1
      elif opcao == 2:
          listar(hoteis)
      elif opcao == 3:
          buscar(hoteis)
      else:
          print('Opção inválida')

  print(f"{n} Hotéis cadastrados com sucesso")
  print("Todos os hotéis cadastrados: ")
  print(hoteis)
  
main()  