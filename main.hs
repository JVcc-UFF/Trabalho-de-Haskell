registro nome numero endereco=(nome,numero,endereco)

getNome (nome,numero,endereco)=nome

inserir registro lista=lista++[registro]

modificar registro lista=inserir registro (filter (naoEstaNaLista (getNome registro)) lista)

buscar _nome lista = filter (estaNaLista _nome) lista

estaNaLista _nome (nome,_,_) 
  |(_nome==nome) = True
  |otherwise = False

naoEstaNaLista _nome (nome,_,_) 
  |(_nome==nome) = False
  |otherwise = True

remover _nome lista = filter (naoEstaNaLista "Pedro Souza") lista

main = do
  let novo=[]
  let listaT=[]
  let novo=inserir (registro "Pedro Souza" 28875 "rua A") listaT
  let listaT=novo
  putStrLn "------------------Lista Telefonica------------------"  
  print listaT
  putStrLn "----------------------------------------------------"
  let auxRem=remover "Pedro Souza" listaT
  let listaT=auxRem
  putStrLn "------------------Lista Telefonica------------------"  
  print listaT
  putStrLn "----------------------------------------------------"
  let novo=inserir (registro "Joao Victor" 94506 "rua B") listaT
  let listaT=novo
  putStrLn "------------------Lista Telefonica------------------"  
  print listaT
  putStrLn "----------------------------------------------------"
  let novo=inserir (registro "Barbara" 07040 "rua C") listaT
  let listaT=novo
  putStrLn "------------------Lista Telefonica------------------"  
  print listaT
  putStrLn "----------------------------------------------------"
  let novo=modificar (registro "Joao Victor" 22568 "rua D") listaT
  let listaT=novo
  putStrLn "------------------Lista Telefonica------------------"  
  print listaT
  putStrLn "----------------------------------------------------"
  let busca = buscar "Joao Victor" listaT
  putStrLn "------------------Elemento Busca------------------"
  print busca
  putStrLn "----------------------------------------------------"
