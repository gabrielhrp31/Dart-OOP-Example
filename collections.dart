void main() {
  print("\n-----------List------------");
  //Lists
  var list = ["Olá","Collections",1,2,3,4,5,6,7,8,9];
  print("${list[0]} ${list[1]}");
  print(list);
  print("Tamanho: ${list.length}");
  
  print("\n-----------Typed List------------");
  
  var typedList = List<String>();
  typedList.addAll(["Olá","Typed","Collections"]);
  for(int i=0;i<typedList.length;i++){
    print(typedList[i]);
  }
  print(typedList);
  print("Tamanho: ${typedList.length}");
  
  //Map
  
  print("\n-----------Maps------------");
  var jogadores = {
    "primeiro":"C. Ronaldo",
    "segundo":"Messi",
    "terceiro":"Neymar",
  };
  
  print(jogadores["primeiro"]);
  print(jogadores);
  jogadores.forEach((key,value)=>{
    print("$key -> $value")
  });
}
