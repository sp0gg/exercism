namespace HelloWorld
{
    public static class HelloWorld
    {
        public static string Hello(string name = "World")
        {
            return $"Hello, {name ?? "World"}!";
        }
    }
}
