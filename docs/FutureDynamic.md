The onPressed argument of the MaterialButton widget expects a void Function().
Your passwordReset() function returns a Future.
However by doing onPressed: passwordReset(), you actually call the function and pass the result, instead of passing in the function itself.

The correct way of doing this would be
a) If passwordReset() returns a Future<T> you can use a lambda

onPressed: () async {
 await passwordReset();
}
b) If passwordReset() returns void you can use a tear off, i.e. onPressed: passwordReset, (no parentheses)

It is also a good practice to define the generic type of Future<T> so that you know what it returns when it is awaited.
In your case that could be Future<void> passwordReset() async { ... }, although I don't know if the function actually returns something else.

Usually we make mistake by assigning directly without looking up the returned value. 