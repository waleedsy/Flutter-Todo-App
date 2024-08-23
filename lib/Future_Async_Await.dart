void main() {
  print(createOrderMessage());
}

String createOrderMessage()
{
  var order = fetchUserOrder();

  return "Customer order was: $order";
}

Future <String> fetchUserOrder() => 
  Future.delayed(const Duration(seconds: 2),
    () => '123'
  );