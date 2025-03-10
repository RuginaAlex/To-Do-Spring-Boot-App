package com.todo.springboot.todowebapp.todo;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.List;

@Controller
public class TodoController {

    private TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }


    @RequestMapping("/list-todos")
    public String listAllTodos(ModelMap model){
        List<Todo> todos = todoService.showAll();
        model.put("todos",todos);
        return "listTodos";
    }

    @RequestMapping(value="/add-todo",method = RequestMethod.GET)
    public String showNewTodoPage(ModelMap model){
        String username = (String) model.get("name");
        Todo todo = new Todo(0,username,"",LocalDate.now().plusYears(1),false);
        model.put("todo",todo);
        return "todo";
    }

    @RequestMapping(value="/add-todo",method = RequestMethod.POST)
    public String addNewTodo(ModelMap model, @Valid Todo todo, BindingResult result){

        if (result.hasErrors()){
            return "todo";
        }
        String username = (String) model.get("name");
        todoService.addTodo(username,todo.getDescription(),
                                        todo.getTargetDate(),false);
        return "redirect:list-todos";
    }
    @RequestMapping(value="/delete-todo")
    public String deleteTodo(@RequestParam int id){
        todoService.deleteById(id);

        return "redirect:list-todos";
    }
    @RequestMapping(value="/update-todo",method = RequestMethod.GET)
    public String showUpdateTodoPage(int id, ModelMap modelMap){
        Todo todo = todoService.findById(id);
        modelMap.put("todo",todo);
        return "todo";
    }
    @RequestMapping(value="/update-todo",method = RequestMethod.POST)
    public String updateTodo(ModelMap model, @Valid Todo todo, BindingResult result){

        if (result.hasErrors()){
            return "todo";
        }
        String username = (String) model.get("name");
        todo.setUsername(username);
        todoService.updateTodo(todo);
        return "redirect:list-todos";
    }
}
