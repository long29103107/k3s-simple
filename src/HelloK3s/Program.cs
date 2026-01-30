var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();
Console.WriteLine("Hello from K3s – mono repo 🚀");

app.MapGet("/", () => "Hello from K3s – mono repo 🚀");


app.Run();