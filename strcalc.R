compute = function(input_string){
  #Do simple arithmetic from strings
  #Example: compute('5+2')->7
  values = unlist(strsplit(input_string, ' '))
  num0 = as.integer(values[1])
  operator = values[2]
  num1 = as.integer(values[3])
  result<- switch(operator,
         '+' =num0+num1,
         '-' =num0-num1,
         NA)
  if(is.na(result)){
    print('Unknown operator')
  }
  return(result)
}