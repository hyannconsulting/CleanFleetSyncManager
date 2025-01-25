using FleetSyncManager.Infrastrucure.Persistence;
using Microsoft.EntityFrameworkCore; // Add this using directive

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
if (string.IsNullOrEmpty(connectionString))
{
    throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");
}

builder.Services.AddDbContext<FleetSyncManagerDbContext>(options =>
    options.UseSqlServer(connectionString));

//builder.Services.AddApplicationDependencies();
//builder.Services.AddSingleton<IToDoRepository, InMemoryToDoRepository>();

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();