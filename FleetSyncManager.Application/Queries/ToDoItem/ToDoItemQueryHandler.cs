//using MediatR;
//using ToDoApp.Domain.Interfaces;

//namespace ToDoApp.Application.Queries.ToDoItem;

///// <summary>
///// 
///// </summary>
///// <seealso cref="MediatR.IRequestHandler&lt;ToDoApp.Application.Queries.ToDoItem.ToDoItemQuery, System.Collections.Generic.List&lt;ToDoApp.Domain.Entities.ToDoItem&gt;&gt;" />
//public class ToDoItemQueryHandler(IToDoRepository toDoRepository)
//    : IRequestHandler<ToDoItemQuery, List<Domain.Entities.ToDoItem>>
//{
//    /// <summary>
//    /// Handles a request
//    /// </summary>
//    /// <param name="request">The request</param>
//    /// <param name="cancellationToken">Cancellation token</param>
//    /// <returns>
//    /// Response from the request
//    /// </returns>
//    public Task<List<Domain.Entities.ToDoItem>> Handle(
//        ToDoItemQuery request, CancellationToken cancellationToken)
//    {
//        return toDoRepository.GetAllAsync();
//    }
//}