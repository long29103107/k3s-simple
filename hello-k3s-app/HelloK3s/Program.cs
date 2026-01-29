var app = WebApplication.Create(args);
app.MapGet("/", () => "Hello from K3s 🚀");
app.Run();